.class public Lcom/samsung/wfd/WfdInfo;
.super Ljava/lang/Object;
.source "WfdInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final COUPLED:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/wfd/WfdInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_SESSION_MGMT_CTRL_PORT:I = 0xc000

.field public static final DEVICETYPE_INVALID:I = 0x4

.field public static final DEVICETYPE_PRIMARYSINK:I = 0x1

.field public static final DEVICETYPE_SECONDARYSINK:I = 0x2

.field public static final DEVICETYPE_SOURCE:I = 0x0

.field public static final DEVICETYPE_SOURCE_PRIMARYSINK:I = 0x3

.field public static final NOT_COUPLED_AVAILABLE:I = 0x0

.field public static final PC_P2P:I = 0x0

.field public static final PC_TDLS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WfdInfo"

.field public static final TEARDOWN_COUPLING:I = 0x2


# instance fields
.field public coupledDeviceAdress:Ljava/lang/String;

.field public coupledSinkStatus:I

.field public cpled_sink_status:I

.field public ctrl_port:I

.field public dev_info:I

.field public deviceAddress:Ljava/lang/String;

.field public deviceType:I

.field public isAudioOnlySupportedAtSource:Z

.field public isAudioUnspportedAtPrimarySink:Z

.field public isAvailableForSession:Z

.field public isContentProtectionSupported:Z

.field public isCoupledSinkSupportedBySink:Z

.field public isCoupledSinkSupportedBySource:Z

.field public isServiceDiscoverySupported:Z

.field public isTDLSPersistentGroupIntended:Z

.field public isTDLSReInvokePersistentGroupReq:Z

.field public isTimeSynchronizationSupported:Z

.field public maxThroughput:I

.field public max_tput:I

.field public preferredConnectivity:I

.field public sessionMgmtCtrlPort:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 254
    new-instance v0, Lcom/samsung/wfd/WfdInfo$1;

    invoke-direct {v0}, Lcom/samsung/wfd/WfdInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/wfd/WfdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 179
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const v0, 0xc000

    iput v0, p0, Lcom/samsung/wfd/WfdInfo;->sessionMgmtCtrlPort:I

    .line 99
    iput v1, p0, Lcom/samsung/wfd/WfdInfo;->deviceType:I

    .line 105
    iput v1, p0, Lcom/samsung/wfd/WfdInfo;->preferredConnectivity:I

    .line 112
    iput v1, p0, Lcom/samsung/wfd/WfdInfo;->coupledSinkStatus:I

    .line 122
    iput-boolean v1, p0, Lcom/samsung/wfd/WfdInfo;->isCoupledSinkSupportedBySource:Z

    .line 130
    iput-boolean v1, p0, Lcom/samsung/wfd/WfdInfo;->isCoupledSinkSupportedBySink:Z

    .line 135
    iput-boolean v1, p0, Lcom/samsung/wfd/WfdInfo;->isAvailableForSession:Z

    .line 140
    iput-boolean v1, p0, Lcom/samsung/wfd/WfdInfo;->isServiceDiscoverySupported:Z

    .line 146
    iput-boolean v1, p0, Lcom/samsung/wfd/WfdInfo;->isContentProtectionSupported:Z

    .line 152
    iput-boolean v1, p0, Lcom/samsung/wfd/WfdInfo;->isTimeSynchronizationSupported:Z

    .line 158
    iput-boolean v1, p0, Lcom/samsung/wfd/WfdInfo;->isAudioUnspportedAtPrimarySink:Z

    .line 164
    iput-boolean v1, p0, Lcom/samsung/wfd/WfdInfo;->isAudioOnlySupportedAtSource:Z

    .line 170
    iput-boolean v1, p0, Lcom/samsung/wfd/WfdInfo;->isTDLSPersistentGroupIntended:Z

    .line 176
    iput-boolean v1, p0, Lcom/samsung/wfd/WfdInfo;->isTDLSReInvokePersistentGroupReq:Z

    .line 180
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/wfd/WfdInfo;->deviceType:I

    .line 181
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    .line 185
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const v0, 0xc000

    iput v0, p0, Lcom/samsung/wfd/WfdInfo;->sessionMgmtCtrlPort:I

    .line 99
    iput v1, p0, Lcom/samsung/wfd/WfdInfo;->deviceType:I

    .line 105
    iput v1, p0, Lcom/samsung/wfd/WfdInfo;->preferredConnectivity:I

    .line 112
    iput v1, p0, Lcom/samsung/wfd/WfdInfo;->coupledSinkStatus:I

    .line 122
    iput-boolean v1, p0, Lcom/samsung/wfd/WfdInfo;->isCoupledSinkSupportedBySource:Z

    .line 130
    iput-boolean v1, p0, Lcom/samsung/wfd/WfdInfo;->isCoupledSinkSupportedBySink:Z

    .line 135
    iput-boolean v1, p0, Lcom/samsung/wfd/WfdInfo;->isAvailableForSession:Z

    .line 140
    iput-boolean v1, p0, Lcom/samsung/wfd/WfdInfo;->isServiceDiscoverySupported:Z

    .line 146
    iput-boolean v1, p0, Lcom/samsung/wfd/WfdInfo;->isContentProtectionSupported:Z

    .line 152
    iput-boolean v1, p0, Lcom/samsung/wfd/WfdInfo;->isTimeSynchronizationSupported:Z

    .line 158
    iput-boolean v1, p0, Lcom/samsung/wfd/WfdInfo;->isAudioUnspportedAtPrimarySink:Z

    .line 164
    iput-boolean v1, p0, Lcom/samsung/wfd/WfdInfo;->isAudioOnlySupportedAtSource:Z

    .line 170
    iput-boolean v1, p0, Lcom/samsung/wfd/WfdInfo;->isTDLSPersistentGroupIntended:Z

    .line 176
    iput-boolean v1, p0, Lcom/samsung/wfd/WfdInfo;->isTDLSReInvokePersistentGroupReq:Z

    .line 186
    iput p1, p0, Lcom/samsung/wfd/WfdInfo;->deviceType:I

    .line 187
    return-void
.end method

.method public constructor <init>(Lcom/samsung/wfd/WfdInfo;)V
    .locals 2
    .parameter "source"

    .prologue
    const/4 v1, 0x0

    .line 234
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const v0, 0xc000

    iput v0, p0, Lcom/samsung/wfd/WfdInfo;->sessionMgmtCtrlPort:I

    .line 99
    iput v1, p0, Lcom/samsung/wfd/WfdInfo;->deviceType:I

    .line 105
    iput v1, p0, Lcom/samsung/wfd/WfdInfo;->preferredConnectivity:I

    .line 112
    iput v1, p0, Lcom/samsung/wfd/WfdInfo;->coupledSinkStatus:I

    .line 122
    iput-boolean v1, p0, Lcom/samsung/wfd/WfdInfo;->isCoupledSinkSupportedBySource:Z

    .line 130
    iput-boolean v1, p0, Lcom/samsung/wfd/WfdInfo;->isCoupledSinkSupportedBySink:Z

    .line 135
    iput-boolean v1, p0, Lcom/samsung/wfd/WfdInfo;->isAvailableForSession:Z

    .line 140
    iput-boolean v1, p0, Lcom/samsung/wfd/WfdInfo;->isServiceDiscoverySupported:Z

    .line 146
    iput-boolean v1, p0, Lcom/samsung/wfd/WfdInfo;->isContentProtectionSupported:Z

    .line 152
    iput-boolean v1, p0, Lcom/samsung/wfd/WfdInfo;->isTimeSynchronizationSupported:Z

    .line 158
    iput-boolean v1, p0, Lcom/samsung/wfd/WfdInfo;->isAudioUnspportedAtPrimarySink:Z

    .line 164
    iput-boolean v1, p0, Lcom/samsung/wfd/WfdInfo;->isAudioOnlySupportedAtSource:Z

    .line 170
    iput-boolean v1, p0, Lcom/samsung/wfd/WfdInfo;->isTDLSPersistentGroupIntended:Z

    .line 176
    iput-boolean v1, p0, Lcom/samsung/wfd/WfdInfo;->isTDLSReInvokePersistentGroupReq:Z

    .line 235
    if-eqz p1, :cond_0

    .line 236
    iget-object v0, p1, Lcom/samsung/wfd/WfdInfo;->deviceAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/wfd/WfdInfo;->deviceAddress:Ljava/lang/String;

    .line 237
    iget v0, p1, Lcom/samsung/wfd/WfdInfo;->dev_info:I

    iput v0, p0, Lcom/samsung/wfd/WfdInfo;->dev_info:I

    .line 238
    iget v0, p1, Lcom/samsung/wfd/WfdInfo;->ctrl_port:I

    iput v0, p0, Lcom/samsung/wfd/WfdInfo;->ctrl_port:I

    .line 239
    iget v0, p1, Lcom/samsung/wfd/WfdInfo;->max_tput:I

    iput v0, p0, Lcom/samsung/wfd/WfdInfo;->max_tput:I

    .line 240
    iget v0, p1, Lcom/samsung/wfd/WfdInfo;->cpled_sink_status:I

    iput v0, p0, Lcom/samsung/wfd/WfdInfo;->cpled_sink_status:I

    .line 242
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 10
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 196
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const v6, 0xc000

    iput v6, p0, Lcom/samsung/wfd/WfdInfo;->sessionMgmtCtrlPort:I

    .line 99
    iput v8, p0, Lcom/samsung/wfd/WfdInfo;->deviceType:I

    .line 105
    iput v8, p0, Lcom/samsung/wfd/WfdInfo;->preferredConnectivity:I

    .line 112
    iput v8, p0, Lcom/samsung/wfd/WfdInfo;->coupledSinkStatus:I

    .line 122
    iput-boolean v8, p0, Lcom/samsung/wfd/WfdInfo;->isCoupledSinkSupportedBySource:Z

    .line 130
    iput-boolean v8, p0, Lcom/samsung/wfd/WfdInfo;->isCoupledSinkSupportedBySink:Z

    .line 135
    iput-boolean v8, p0, Lcom/samsung/wfd/WfdInfo;->isAvailableForSession:Z

    .line 140
    iput-boolean v8, p0, Lcom/samsung/wfd/WfdInfo;->isServiceDiscoverySupported:Z

    .line 146
    iput-boolean v8, p0, Lcom/samsung/wfd/WfdInfo;->isContentProtectionSupported:Z

    .line 152
    iput-boolean v8, p0, Lcom/samsung/wfd/WfdInfo;->isTimeSynchronizationSupported:Z

    .line 158
    iput-boolean v8, p0, Lcom/samsung/wfd/WfdInfo;->isAudioUnspportedAtPrimarySink:Z

    .line 164
    iput-boolean v8, p0, Lcom/samsung/wfd/WfdInfo;->isAudioOnlySupportedAtSource:Z

    .line 170
    iput-boolean v8, p0, Lcom/samsung/wfd/WfdInfo;->isTDLSPersistentGroupIntended:Z

    .line 176
    iput-boolean v8, p0, Lcom/samsung/wfd/WfdInfo;->isTDLSReInvokePersistentGroupReq:Z

    .line 197
    const-string v6, " "

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 199
    .local v5, tokens:[Ljava/lang/String;
    array-length v6, v5

    if-ge v6, v9, :cond_0

    .line 200
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Malformed wfd information"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 203
    :cond_0
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_6

    aget-object v4, v0, v1

    .line 204
    .local v4, token:Ljava/lang/String;
    const-string v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 206
    .local v3, nameValue:[Ljava/lang/String;
    aget-object v6, v3, v8

    const-string v7, "dev_addr"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 207
    aget-object v6, v3, v9

    iput-object v6, p0, Lcom/samsung/wfd/WfdInfo;->deviceAddress:Ljava/lang/String;

    .line 203
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    :cond_2
    aget-object v6, v3, v8

    const-string v7, "wfd_dev_info"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 212
    aget-object v6, v3, v9

    invoke-direct {p0, v6}, Lcom/samsung/wfd/WfdInfo;->parseHex(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/samsung/wfd/WfdInfo;->dev_info:I

    goto :goto_1

    .line 216
    :cond_3
    aget-object v6, v3, v8

    const-string v7, "wfd_ctrl_port"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 217
    aget-object v6, v3, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/samsung/wfd/WfdInfo;->ctrl_port:I

    goto :goto_1

    .line 221
    :cond_4
    aget-object v6, v3, v8

    const-string v7, "wfd_max_tput"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 222
    aget-object v6, v3, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/samsung/wfd/WfdInfo;->max_tput:I

    goto :goto_1

    .line 226
    :cond_5
    aget-object v6, v3, v8

    const-string v7, "wfd_cpled_sink_status"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 227
    aget-object v6, v3, v9

    invoke-direct {p0, v6}, Lcom/samsung/wfd/WfdInfo;->parseHex(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/samsung/wfd/WfdInfo;->cpled_sink_status:I

    goto :goto_1

    .line 231
    .end local v3           #nameValue:[Ljava/lang/String;
    .end local v4           #token:Ljava/lang/String;
    :cond_6
    return-void
.end method

.method private parseHex(Ljava/lang/String;)I
    .locals 5
    .parameter "hexString"

    .prologue
    .line 297
    const/4 v1, 0x0

    .line 298
    .local v1, num:I
    const-string v2, "0x"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "0X"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 299
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 303
    :cond_1
    const/16 v2, 0x10

    :try_start_0
    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 307
    :goto_0
    return v1

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "WfdInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse hex string "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x0

    return v0
.end method

.method public isWFDDevice()Z
    .locals 2

    .prologue
    .line 285
    iget v0, p0, Lcom/samsung/wfd/WfdInfo;->deviceType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 272
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 273
    .local v0, sbuf:Ljava/lang/StringBuffer;
    const-string v1, "device_address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/wfd/WfdInfo;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " dev_info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/samsung/wfd/WfdInfo;->dev_info:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " ctrl_port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/samsung/wfd/WfdInfo;->ctrl_port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " max_tput: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/samsung/wfd/WfdInfo;->max_tput:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " cpled_sink_status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/samsung/wfd/WfdInfo;->cpled_sink_status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 278
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/samsung/wfd/WfdInfo;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    iget v0, p0, Lcom/samsung/wfd/WfdInfo;->dev_info:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    iget v0, p0, Lcom/samsung/wfd/WfdInfo;->ctrl_port:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    iget v0, p0, Lcom/samsung/wfd/WfdInfo;->max_tput:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    iget v0, p0, Lcom/samsung/wfd/WfdInfo;->cpled_sink_status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    return-void
.end method
