.class public Lcom/android/internal/telephony/gsm/GsmDataConnection;
.super Lcom/android/internal/telephony/DataConnection;
.source "GsmDataConnection.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GSM"

.field private static final PDP_FAIL_ACTIVATION_REJECT_GGSN:I = 0x1e

.field private static final PDP_FAIL_ACTIVATION_REJECT_UNSPECIFIED:I = 0x1f

.field private static final PDP_FAIL_ERROR_UNSPECIFIED:I = 0xffff

.field private static final PDP_FAIL_GPRS_REGISTRATION_FAIL:I = -0x2

.field private static final PDP_FAIL_INSUFFICIENT_RESOURCES:I = 0x1a

.field private static final PDP_FAIL_MISSING_UKNOWN_APN:I = 0x1b

.field private static final PDP_FAIL_NSAPI_IN_USE:I = 0x23

.field private static final PDP_FAIL_OPERATOR_BARRED:I = 0x8

.field private static final PDP_FAIL_PROTOCOL_ERRORS:I = 0x6f

.field private static final PDP_FAIL_REGISTRATION_FAIL:I = -0x1

.field private static final PDP_FAIL_SERVICE_OPTION_NOT_SUBSCRIBED:I = 0x21

.field private static final PDP_FAIL_SERVICE_OPTION_NOT_SUPPORTED:I = 0x20

.field private static final PDP_FAIL_SERVICE_OPTION_OUT_OF_ORDER:I = 0x22

.field private static final PDP_FAIL_UNKNOWN_PDP_ADDRESS_TYPE:I = 0x1c

.field private static final PDP_FAIL_USER_AUTHENTICATION:I = 0x1d


# instance fields
.field protected mProfileId:I


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;ILcom/android/internal/telephony/RetryManager;Lcom/android/internal/telephony/DataConnectionTracker;)V
    .locals 1
    .parameter "phone"
    .parameter "name"
    .parameter "id"
    .parameter "rm"
    .parameter "dct"

    .prologue
    .line 79
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/DataConnection;-><init>(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;ILcom/android/internal/telephony/RetryManager;Lcom/android/internal/telephony/DataConnectionTracker;)V

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->mProfileId:I

    .line 80
    return-void
.end method

.method private fetchLgtApn(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "apn"

    .prologue
    .line 230
    move-object v0, p1

    .line 232
    .local v0, apnName:Ljava/lang/String;
    const-string v2, "internet.lguplus.co.kr"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v1, v0

    .line 243
    .end local v0           #apnName:Ljava/lang/String;
    .local v1, apnName:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 234
    .end local v1           #apnName:Ljava/lang/String;
    .restart local v0       #apnName:Ljava/lang/String;
    :cond_0
    const-string v2, "3"

    const-string/jumbo v3, "ril.simtype"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "45006"

    const-string v3, "gsm.operator.numeric"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 238
    const-string/jumbo v0, "wroaming.lguplus.co.kr"

    .line 242
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fetchLgtApn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->log(Ljava/lang/String;)V

    move-object v1, v0

    .line 243
    .end local v0           #apnName:Ljava/lang/String;
    .restart local v1       #apnName:Ljava/lang/String;
    goto :goto_0

    .line 240
    .end local v1           #apnName:Ljava/lang/String;
    .restart local v0       #apnName:Ljava/lang/String;
    :cond_1
    const-string v0, "internet.lguplus.co.kr"

    goto :goto_1
.end method

.method private fetchSktApn(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "apn"

    .prologue
    const/4 v0, 0x1

    .line 208
    move-object v1, p1

    .line 210
    .local v1, apnName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mobile_data"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 216
    .local v0, DataNetworkEnable:Z
    :goto_0
    const-string/jumbo v3, "web.sktelecom.com"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v2, v1

    .line 226
    .end local v1           #apnName:Ljava/lang/String;
    .local v2, apnName:Ljava/lang/String;
    :goto_1
    return-object v2

    .line 210
    .end local v0           #DataNetworkEnable:Z
    .end local v2           #apnName:Ljava/lang/String;
    .restart local v1       #apnName:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 218
    .restart local v0       #DataNetworkEnable:Z
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    if-nez v3, :cond_2

    if-nez v0, :cond_2

    .line 219
    const-string v1, "mmsonly.sktelecom.com"

    .line 225
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fetchSktApn :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->log(Ljava/lang/String;)V

    move-object v2, v1

    .line 226
    .end local v1           #apnName:Ljava/lang/String;
    .restart local v2       #apnName:Ljava/lang/String;
    goto :goto_1

    .line 220
    .end local v2           #apnName:Ljava/lang/String;
    .restart local v1       #apnName:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 221
    const-string/jumbo v1, "roaming.sktelecom.com"

    goto :goto_2

    :cond_3
    move-object v2, v1

    .line 223
    .end local v1           #apnName:Ljava/lang/String;
    .restart local v2       #apnName:Ljava/lang/String;
    goto :goto_1
.end method

.method private isIpAddress(Ljava/lang/String;)Z
    .locals 1
    .parameter "address"

    .prologue
    .line 253
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 255
    :goto_0
    return v0

    :cond_0
    sget-object v0, Landroid/util/Patterns;->IP_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0
.end method

.method static makeDataConnection(Lcom/android/internal/telephony/PhoneBase;ILcom/android/internal/telephony/RetryManager;Lcom/android/internal/telephony/DataConnectionTracker;)Lcom/android/internal/telephony/gsm/GsmDataConnection;
    .locals 6
    .parameter "phone"
    .parameter "id"
    .parameter "rm"
    .parameter "dct"

    .prologue
    .line 92
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmDataConnection;->mCountLock:Ljava/lang/Object;

    monitor-enter v2

    .line 93
    :try_start_0
    sget v1, Lcom/android/internal/telephony/gsm/GsmDataConnection;->mCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/internal/telephony/gsm/GsmDataConnection;->mCount:I

    .line 94
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GsmDC-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/gsm/GsmDataConnection;->mCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/GsmDataConnection;-><init>(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;ILcom/android/internal/telephony/RetryManager;Lcom/android/internal/telephony/DataConnectionTracker;)V

    .line 96
    .local v0, gsmDc:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->start()V

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Made "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->log(Ljava/lang/String;)V

    .line 98
    return-object v0

    .line 94
    .end local v0           #gsmDc:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 260
    const-string v0, "GsmDataConnection extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 261
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/DataConnection;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mProfileId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->mProfileId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method public getProfileId()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->mProfileId:I

    return v0
.end method

.method protected isDnsOk([Ljava/lang/String;)Z
    .locals 5
    .parameter "domainNameServers"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 187
    const-string v0, "0.0.0.0"

    aget-object v3, p1, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "0.0.0.0"

    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->isDnsCheckDisabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->mApn:Lcom/android/internal/telephony/DataProfile;

    iget-object v0, v0, Lcom/android/internal/telephony/DataProfile;->types:[Ljava/lang/String;

    aget-object v0, v0, v1

    const-string v3, "mms"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->mApn:Lcom/android/internal/telephony/DataProfile;

    check-cast v0, Lcom/android/internal/telephony/ApnSetting;

    iget-object v0, v0, Lcom/android/internal/telephony/ApnSetting;->mmsProxy:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->isIpAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 196
    :cond_0
    const-string v3, "isDnsOk: return false apn.types[0]=%s APN_TYPE_MMS=%s isIpAddress(%s)=%s"

    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->mApn:Lcom/android/internal/telephony/DataProfile;

    iget-object v0, v0, Lcom/android/internal/telephony/DataProfile;->types:[Ljava/lang/String;

    aget-object v0, v0, v1

    aput-object v0, v4, v1

    const-string v0, "mms"

    aput-object v0, v4, v2

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->mApn:Lcom/android/internal/telephony/DataProfile;

    check-cast v0, Lcom/android/internal/telephony/ApnSetting;

    iget-object v0, v0, Lcom/android/internal/telephony/ApnSetting;->mmsProxy:Ljava/lang/String;

    aput-object v0, v4, v2

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->mApn:Lcom/android/internal/telephony/DataProfile;

    check-cast v0, Lcom/android/internal/telephony/ApnSetting;

    iget-object v0, v0, Lcom/android/internal/telephony/ApnSetting;->mmsProxy:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->isIpAddress(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->log(Ljava/lang/String;)V

    move v0, v1

    .line 203
    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 249
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    return-void
.end method

.method protected onConnect(Lcom/android/internal/telephony/DataConnection$ConnectionParams;)V
    .locals 11
    .parameter "cp"

    .prologue
    const-wide/16 v4, -0x1

    .line 111
    iget-object v0, p1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->apn:Lcom/android/internal/telephony/DataProfile;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->mApn:Lcom/android/internal/telephony/DataProfile;

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connecting to carrier: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->mApn:Lcom/android/internal/telephony/DataProfile;

    check-cast v0, Lcom/android/internal/telephony/ApnSetting;

    iget-object v0, v0, Lcom/android/internal/telephony/ApnSetting;->carrier:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' APN: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->mApn:Lcom/android/internal/telephony/DataProfile;

    iget-object v1, v1, Lcom/android/internal/telephony/DataProfile;->apn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' proxy: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->mApn:Lcom/android/internal/telephony/DataProfile;

    check-cast v0, Lcom/android/internal/telephony/ApnSetting;

    iget-object v0, v0, Lcom/android/internal/telephony/ApnSetting;->proxy:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' port: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->mApn:Lcom/android/internal/telephony/DataProfile;

    check-cast v0, Lcom/android/internal/telephony/ApnSetting;

    iget-object v0, v0, Lcom/android/internal/telephony/ApnSetting;->port:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->log(Ljava/lang/String;)V

    .line 117
    iput-wide v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->createTime:J

    .line 118
    iput-wide v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->lastFailTime:J

    .line 119
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->NONE:Lcom/android/internal/telephony/DataConnection$FailCause;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->lastFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 122
    const v0, 0x40001

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 123
    .local v8, msg:Landroid/os/Message;
    iput-object p1, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->mApn:Lcom/android/internal/telephony/DataProfile;

    iget-object v7, v0, Lcom/android/internal/telephony/DataProfile;->roamingProtocol:Ljava/lang/String;

    .line 133
    .local v7, protocol:Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 134
    .local v10, r:Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v9

    .line 138
    .local v9, operator:Ljava/lang/String;
    :goto_1
    const-string v0, "45005"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->mApn:Lcom/android/internal/telephony/DataProfile;

    iget-object v0, v0, Lcom/android/internal/telephony/DataProfile;->apn:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->fetchSktApn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, fetchedApn:Ljava/lang/String;
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getRilRadioTechnology(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->mProfileId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->mApn:Lcom/android/internal/telephony/DataProfile;

    iget-object v4, v4, Lcom/android/internal/telephony/DataProfile;->user:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->mApn:Lcom/android/internal/telephony/DataProfile;

    iget-object v5, v5, Lcom/android/internal/telephony/DataProfile;->password:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->mApn:Lcom/android/internal/telephony/DataProfile;

    iget v6, v6, Lcom/android/internal/telephony/DataProfile;->authType:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 167
    return-void

    .line 129
    .end local v3           #fetchedApn:Ljava/lang/String;
    .end local v7           #protocol:Ljava/lang/String;
    .end local v9           #operator:Ljava/lang/String;
    .end local v10           #r:Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->mApn:Lcom/android/internal/telephony/DataProfile;

    iget-object v7, v0, Lcom/android/internal/telephony/DataProfile;->protocol:Ljava/lang/String;

    .restart local v7       #protocol:Ljava/lang/String;
    goto :goto_0

    .line 134
    .restart local v10       #r:Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_1
    const-string v9, ""

    goto :goto_1

    .line 140
    .restart local v9       #operator:Ljava/lang/String;
    :cond_2
    const-string v0, "3"

    const-string/jumbo v1, "ril.simtype"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 141
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->mApn:Lcom/android/internal/telephony/DataProfile;

    iget-object v0, v0, Lcom/android/internal/telephony/DataProfile;->apn:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->fetchLgtApn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #fetchedApn:Ljava/lang/String;
    goto :goto_2

    .line 143
    .end local v3           #fetchedApn:Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->mApn:Lcom/android/internal/telephony/DataProfile;

    iget-object v3, v0, Lcom/android/internal/telephony/DataProfile;->apn:Ljava/lang/String;

    .restart local v3       #fetchedApn:Ljava/lang/String;
    goto :goto_2
.end method

.method public setProfileId(I)V
    .locals 0
    .parameter "profileId"

    .prologue
    .line 170
    iput p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->mProfileId:I

    .line 171
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": State="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " apnSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->mApn:Lcom/android/internal/telephony/DataProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " apnList= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->mApnList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " RefCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->mRefCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->cid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " create="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->createTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lastFail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->lastFailTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lastFailCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnection;->lastFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
