.class public final Lcom/android/internal/telephony/ims/IMSPhone;
.super Lcom/android/internal/telephony/PhoneBase;
.source "IMSPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;
    }
.end annotation


# static fields
.field static final CANCEL_ECM_TIMER:I = 0x1

.field private static final DBG:Z = true

.field private static final DEFAULT_ECM_EXIT_TIMER_VALUE:I = 0x493e0

.field static final LOG_TAG:Ljava/lang/String; = "IMSPHONE"

.field static final RESTART_ECM_TIMER:I = 0x0

.field static final VM_COUNT_CDMA:Ljava/lang/String; = "vm_count_key_cdma"

.field private static final VM_NUMBER_CDMA:Ljava/lang/String; = "vm_number_key_cdma"

.field private static final VM_NUMBER_IMS:Ljava/lang/String; = "vm_number_key_ims"


# instance fields
.field h:Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;

.field mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

.field private mCarrierOtaSpNumSchema:Ljava/lang/String;

.field private mEcmExitRespRegistrant:Landroid/os/Registrant;

.field private mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

.field private mEriFileLoadedRegistrants:Landroid/os/RegistrantList;

.field private mEsn:Ljava/lang/String;

.field private mImei:Ljava/lang/String;

.field private mIsPhoneInEcmState:Z

.field private mMeid:Ljava/lang/String;

.field private mNvLoadedRegistrants:Landroid/os/RegistrantList;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mPostDialHandler:Landroid/os/Registrant;

.field mSMS:Lcom/android/internal/telephony/ims/IMSSMSDispatcher;

.field mSST:Lcom/android/internal/telephony/ims/IMSServiceStateTracker;

.field mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

.field private mVmNumber:Ljava/lang/String;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/Phone;I)V
    .locals 7
    .parameter "context"
    .parameter "ci"
    .parameter "notifier"
    .parameter "defaultPhone"
    .parameter "phoneType"

    .prologue
    .line 145
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/ims/IMSPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZLcom/android/internal/telephony/Phone;I)V

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZLcom/android/internal/telephony/Phone;I)V
    .locals 6
    .parameter "context"
    .parameter "ci"
    .parameter "notifier"
    .parameter "unitTestMode"
    .parameter "defaultPhone"
    .parameter "phoneType"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 149
    invoke-direct {p0, p3, p1, p2, p4}, Lcom/android/internal/telephony/PhoneBase;-><init>(Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Z)V

    .line 95
    iput-object v3, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mVmNumber:Ljava/lang/String;

    .line 111
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mNvLoadedRegistrants:Landroid/os/RegistrantList;

    .line 114
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mEriFileLoadedRegistrants:Landroid/os/RegistrantList;

    .line 117
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    .line 150
    new-instance v0, Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;-><init>(Lcom/android/internal/telephony/ims/IMSPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->h:Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;

    .line 151
    iput-object p2, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    .line 152
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneType(I)V

    .line 153
    new-instance v0, Lcom/android/internal/telephony/ims/IMSCallTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;-><init>(Lcom/android/internal/telephony/ims/IMSPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

    .line 154
    new-instance v0, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;

    invoke-direct {v0, p0, p2}, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;-><init>(Lcom/android/internal/telephony/ims/IMSPhone;Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mSST:Lcom/android/internal/telephony/ims/IMSServiceStateTracker;

    .line 157
    new-instance v0, Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/PhoneSubInfo;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 158
    const-string v0, "IMSPHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default PhoneType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    if-ne p6, v5, :cond_1

    .line 161
    check-cast p5, Lcom/android/internal/telephony/cdma/CDMAPhone;

    .end local p5
    iget-object v0, p5, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 172
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSPhone;->h:Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;

    invoke-interface {v0, v1, v4, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 173
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSPhone;->h:Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;

    const/16 v2, 0x8

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 174
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSPhone;->h:Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 175
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSPhone;->h:Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;

    invoke-interface {v0, v1, v5, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 176
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSPhone;->h:Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;

    const/16 v2, 0xe

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnCallRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 177
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mSST:Lcom/android/internal/telephony/ims/IMSServiceStateTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSPhone;->h:Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;->registerForNetworkAttach(Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;ILjava/lang/Object;)V

    .line 197
    return-void

    .line 163
    .restart local p5
    :cond_1
    if-ne p6, v4, :cond_0

    .line 164
    check-cast p5, Lcom/android/internal/telephony/gsm/GSMPhone;

    .end local p5
    iget-object v0, p5, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/ims/IMSPhone;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mEsn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/ims/IMSPhone;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mMeid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/ims/IMSPhone;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mVmNumber:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public SimSlotActivation(Z)V
    .locals 0
    .parameter "activation"

    .prologue
    .line 1488
    return-void
.end method

.method public acceptCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->acceptCall()V

    .line 322
    return-void
.end method

.method public activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 0
    .parameter "activate"
    .parameter "response"

    .prologue
    .line 331
    return-void
.end method

.method public addUserToConfCall(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 8
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1244
    const-string v5, "eng"

    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1245
    const-string v5, "IMSPhone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addUserToConfCall"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 1250
    .local v4, newStrbuf:Ljava/lang/StringBuffer;
    if-eqz p1, :cond_2

    const/16 v5, 0x24

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 1252
    const-string v5, "\\$"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1253
    .local v0, dialStrings:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_3

    .line 1255
    aget-object v5, v0, v1

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1256
    .local v2, mString:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 1257
    const-string v5, "$"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1259
    :cond_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1253
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1264
    .end local v0           #dialStrings:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #mString:Ljava/lang/String;
    :cond_2
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1267
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1269
    .local v3, newDialString:Ljava/lang/String;
    const-string v5, "eng"

    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1270
    const-string v5, "IMSPhone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addUserToConfCall: newDialString.."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

    invoke-virtual {v5, v3}, Lcom/android/internal/telephony/ims/IMSCallTracker;->addUserToConfCall(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v5

    return-object v5
.end method

.method public akaAuthenticate([B[BLandroid/os/Message;)V
    .locals 0
    .parameter "rand"
    .parameter "autn"
    .parameter "onComplete"

    .prologue
    .line 1434
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 1435
    :cond_0
    return-void
.end method

.method public canConference()Z
    .locals 2

    .prologue
    .line 338
    const-string v0, "IMSPHONE"

    const-string v1, "canConference: not possible in IMS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const/4 v0, 0x0

    return v0
.end method

.method public canTransfer()Z
    .locals 2

    .prologue
    .line 347
    const-string v0, "IMSPHONE"

    const-string v1, "canTransfer: not possible in IMS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const/4 v0, 0x0

    return v0
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 1
    .parameter "facility"
    .parameter "oldPwd"
    .parameter "newPwd"
    .parameter "onComplete"

    .prologue
    .line 1191
    const/4 v0, 0x0

    return v0
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 1
    .parameter "facility"
    .parameter "oldPwd"
    .parameter "newPwd"
    .parameter "newPwdAgain"
    .parameter "onComplete"

    .prologue
    .line 1198
    const/4 v0, 0x0

    return v0
.end method

.method public clearDisconnected()V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->clearDisconnected()V

    .line 357
    return-void
.end method

.method public conference()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 364
    const-string v0, "IMSPHONE"

    const-string v1, "conference: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    return-void
.end method

.method public dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 372
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, newDialString:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    return-object v1
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .parameter "dialString"
    .parameter "uusInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1378
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "Sending UUS information NOT supported in IMS PHONE!"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dialConferenceCall(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 9
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1212
    const-string v6, "eng"

    sget-object v7, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1213
    const-string v6, "IMSPhone"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dialVideoCall"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    :cond_0
    move-object v2, p1

    .line 1216
    .local v2, mDialString:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 1218
    .local v5, newStrbuf:Ljava/lang/StringBuffer;
    if-eqz v2, :cond_2

    const/16 v6, 0x24

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 1220
    const-string v6, "\\$"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1222
    .local v0, dialStrings:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v6, v0

    if-ge v1, v6, :cond_3

    .line 1224
    aget-object v6, v0, v1

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1225
    .local v3, mString:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 1226
    const-string v6, "$"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1228
    :cond_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1222
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1232
    .end local v0           #dialStrings:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v3           #mString:Ljava/lang/String;
    :cond_2
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1235
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1237
    .local v4, newDialString:Ljava/lang/String;
    const-string v6, "eng"

    sget-object v7, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1238
    const-string v6, "IMSPhone"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dialVideoCall: newDialString.."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    :cond_4
    iget-object v6, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

    invoke-virtual {v6, v4}, Lcom/android/internal/telephony/ims/IMSCallTracker;->dialConferenceCall(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v6

    return-object v6
.end method

.method public dialVideoCall(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 3
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1204
    const-string v1, "IMSPhone"

    const-string v2, "dialVideoCall"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1206
    .local v0, newDialString:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    return-object v1
.end method

.method public disableDataConnectivity()Z
    .locals 2

    .prologue
    .line 391
    const-string v0, "IMSPHONE"

    const-string v1, "not needed for IMS phone disableDataConnectivity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const/4 v0, 0x0

    return v0
.end method

.method public disableLocationUpdates()V
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mSST:Lcom/android/internal/telephony/ims/IMSServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;->disableLocationUpdates()V

    .line 402
    return-void
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 200
    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v1

    .line 201
    :try_start_0
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->dispose()V

    .line 203
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSPhone;->h:Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 204
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSPhone;->h:Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 205
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSPhone;->h:Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 206
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mSST:Lcom/android/internal/telephony/ims/IMSServiceStateTracker;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSPhone;->h:Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;->unregisterForNetworkAttach(Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;)V

    .line 207
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSPhone;->h:Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSuppServiceNotification(Landroid/os/Handler;)V

    .line 208
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSPhone;->h:Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCallRing(Landroid/os/Handler;)V

    .line 212
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->dispose()V

    .line 213
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mSST:Lcom/android/internal/telephony/ims/IMSServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;->dispose()V

    .line 214
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mSMS:Lcom/android/internal/telephony/ims/IMSSMSDispatcher;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mSMS:Lcom/android/internal/telephony/ims/IMSSMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSSMSDispatcher;->dispose()V

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->dispose()V

    .line 217
    monitor-exit v1

    .line 218
    return-void

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enableDataConnectivity()Z
    .locals 2

    .prologue
    .line 409
    const-string v0, "IMSPHONE"

    const-string v1, "not needed for IMS phone enableDataConnectivity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const/4 v0, 0x0

    return v0
.end method

.method public enableLocationUpdates()V
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mSST:Lcom/android/internal/telephony/ims/IMSServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;->enableLocationUpdates()V

    .line 419
    return-void
.end method

.method public explicitCallTransfer()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 426
    const-string v0, "IMSPHONE"

    const-string v1, "explicitCallTransfer: not possible in IMS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    return-void
.end method

.method public gbaAuthenticateBootstrap([B[BLandroid/os/Message;)V
    .locals 0
    .parameter "rand"
    .parameter "autn"
    .parameter "onComplete"

    .prologue
    .line 1438
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 1439
    :cond_0
    return-void
.end method

.method public gbaAuthenticateNaf([BLandroid/os/Message;)V
    .locals 0
    .parameter "nafId"
    .parameter "onComplete"

    .prologue
    .line 1442
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1443
    :cond_0
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 434
    const-string v0, "IMSPHONE"

    const-string v1, "getAvailableNetworks: not possible in IMS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    return-void
.end method

.method public bridge synthetic getBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSPhone;->getBackgroundCall()Lcom/android/internal/telephony/ims/IMSCall;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/ims/IMSCall;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->backgroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    return-object v0
.end method

.method public getCBEnableConfig()Z
    .locals 2

    .prologue
    .line 777
    const-string v0, "IMSPHONE"

    const-string v1, "IMSPHONEgetCBEnableConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    const/4 v0, 0x0

    return v0
.end method

.method public getCSPavailable()Z
    .locals 1

    .prologue
    .line 1336
    const/4 v0, 0x0

    return v0
.end method

.method public getCallBarringOption(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "commandInterfacecbFlavour"
    .parameter "onComplete"

    .prologue
    .line 1280
    return-void
.end method

.method public getCallForwardingIndicator()Z
    .locals 2

    .prologue
    .line 450
    const-string v0, "IMSPHONE"

    const-string v1, "getCallForwardingIndicator: not possible in IMS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const/4 v0, 0x0

    return v0
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .locals 2
    .parameter "commandInterfaceCFReason"
    .parameter "onComplete"

    .prologue
    .line 460
    const-string v0, "IMSPHONE"

    const-string v1, "getCallForwardingOption: not possible in IMS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    return-void
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 2
    .parameter "onComplete"

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    .line 472
    return-void
.end method

.method public getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 481
    return-void
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    .prologue
    .line 490
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentDataConnectionList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/DataConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 498
    const-string v0, "IMSPHONE"

    const-string v1, "not needed for IMS phone getCurrentDataConnectionList"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 2

    .prologue
    .line 508
    const-string v0, "IMSPHONE"

    const-string v1, "not needed for IMS phone getDataActivityState"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 518
    const-string v0, "IMSPHONE"

    const-string v1, "not needed for IMS phone getDataCallList"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    return-void
.end method

.method public getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;
    .locals 2

    .prologue
    .line 526
    const-string v0, "IMSPHONE"

    const-string v1, "not needed for IMS phone getDataConnectionState"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1
    .parameter "apnType"

    .prologue
    .line 1429
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataConnectionState([Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1
    .parameter "apnTypes"

    .prologue
    .line 1285
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataNetworkDisable()Z
    .locals 1

    .prologue
    .line 782
    const/4 v0, 0x0

    return v0
.end method

.method public getDataRoamingEnabled()Z
    .locals 2

    .prologue
    .line 535
    const-string v0, "IMSPHONE"

    const-string v1, "not needed for IMS phone getDataRoamingEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const/4 v0, 0x0

    return v0
.end method

.method public getDataServiceState()I
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mSST:Lcom/android/internal/telephony/ims/IMSServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 545
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSPhone;->getMeid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 553
    const-string v0, "IMSPHONE"

    const-string v1, "getDeviceSvn(): return 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const-string v0, "0"

    return-object v0
.end method

.method public getEsn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mEsn:Ljava/lang/String;

    return-object v0
.end method

.method public getFDNavailable()Z
    .locals 1

    .prologue
    .line 1371
    const/4 v0, 0x0

    return v0
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->h:Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;

    return-object v0
.end method

.method public getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "ID"

    .prologue
    .line 1349
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccCard()Lcom/android/internal/telephony/IccCard;
    .locals 1

    .prologue
    .line 578
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 2

    .prologue
    .line 585
    const-string v0, "IMSPHONE"

    const-string v1, "getIccPhoneBookInterfaceManager: is called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccRecordsLoaded()Z
    .locals 1

    .prologue
    .line 594
    const/4 v0, 0x0

    return v0
.end method

.method public getIccSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 602
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 1

    .prologue
    .line 610
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1418
    const-string v0, "IMSPHONE"

    const-string v1, "IMEI is not available in IMS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImeiInCDMAGSMPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1480
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mImei:Ljava/lang/String;

    return-object v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 618
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 2

    .prologue
    .line 626
    const-string v0, "IMSPHONE"

    const-string v1, "getLine1AlphaTag: not possible in IMS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLineId(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1359
    return-void
.end method

.method public getMeid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mMeid:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageWaitingIndicator()Z
    .locals 1

    .prologue
    .line 643
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSPhone;->getVoiceMessageCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMsisdnavailable()Z
    .locals 1

    .prologue
    .line 1291
    const/4 v0, 0x0

    return v0
.end method

.method public getMultiSmsState()Z
    .locals 1

    .prologue
    .line 799
    const/4 v0, 0x0

    return v0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->getMute()Z

    move-result v0

    return v0
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 661
    return-void
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1383
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 2
    .parameter "onComplete"

    .prologue
    .line 668
    const-string v0, "IMSPHONE"

    const-string v1, "getOutgoingCallerIdDisplay: not possible in IMS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    return-void
.end method

.method public getPdpContextList(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 677
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ims/IMSPhone;->getDataCallList(Landroid/os/Message;)V

    .line 679
    return-void
.end method

.method public getPendingMmiCodes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 686
    const-string v0, "IMSPHONE"

    const-string v1, "method getPendingMmiCodes is NOT supported in IMS!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhoneName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    const-string v0, "IMS"

    return-object v0
.end method

.method public getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    return-object v0
.end method

.method public getPhoneType()I
    .locals 2

    .prologue
    .line 1183
    const-string v0, "IMSPhone"

    const-string v1, "getPhoneType = PHONE_TYPE_IMS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    const/4 v0, 0x4

    return v0
.end method

.method public getPreferredNetworkList(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1457
    return-void
.end method

.method public bridge synthetic getRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSPhone;->getRingingCall()Lcom/android/internal/telephony/ims/IMSCall;

    move-result-object v0

    return-object v0
.end method

.method public getRingingCall()Lcom/android/internal/telephony/ims/IMSCall;
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    return-object v0
.end method

.method public getSMSPavailable()Z
    .locals 1

    .prologue
    .line 1406
    const/4 v0, 0x0

    return v0
.end method

.method public getSMSavailable()Z
    .locals 1

    .prologue
    .line 1366
    const/4 v0, 0x1

    return v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 3

    .prologue
    .line 710
    const-string v0, "IMSPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getServiceState........."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mSST:Lcom/android/internal/telephony/ims/IMSServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mSST:Lcom/android/internal/telephony/ims/IMSServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mSST:Lcom/android/internal/telephony/ims/IMSServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object v0
.end method

.method public getSktImsiM()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1470
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSktIrm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1474
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSponImsi()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1465
    const/4 v0, 0x0

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/Phone$State;
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mSST:Lcom/android/internal/telephony/ims/IMSServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;->getImsi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeInfo(Landroid/os/Message;)V
    .locals 0
    .parameter "onComplete"

    .prologue
    .line 1375
    return-void
.end method

.method public getVideoMailAlphaTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 756
    const-string v0, ""

    .line 758
    .local v0, ret:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 759
    :cond_0
    const/4 v0, 0x0

    .line 761
    .end local v0           #ret:Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 750
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 812
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVoiceServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 1413
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleInCallMmiCommands(Ljava/lang/String;)Z
    .locals 2
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 821
    const-string v0, "IMSPHONE"

    const-string v1, "method handleInCallMmiCommands is NOT supported in IMS!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    const/4 v0, 0x0

    return v0
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 2
    .parameter "dialString"

    .prologue
    .line 837
    const-string v0, "IMSPHONE"

    const-string v1, "method handlePinMmi is NOT supported in IMS!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    const/4 v0, 0x0

    return v0
.end method

.method public initiateFakecall()V
    .locals 0

    .prologue
    .line 1298
    return-void
.end method

.method public isDataConnectivityPossible()Z
    .locals 2

    .prologue
    .line 846
    const-string v0, "IMSPHONE"

    const-string v1, "not needed for IMS phone isDataConnectivityPossible"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    const/4 v0, 0x1

    return v0
.end method

.method public isMMICode(Ljava/lang/String;)Z
    .locals 2
    .parameter "dialString"

    .prologue
    .line 827
    const-string v0, "IMSPHONE"

    const-string v1, "method isMMICode is NOT supported in IMS!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    const/4 v0, 0x0

    return v0
.end method

.method public isRoamingArea()Z
    .locals 1

    .prologue
    .line 1355
    const/4 v0, 0x0

    return v0
.end method

.method notifyDisconnect(Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .parameter "cn"

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 1178
    return-void
.end method

.method public notifyNewIMSCall(Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .parameter "newRinging"

    .prologue
    .line 1168
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyNewIMSCallP(Lcom/android/internal/telephony/Connection;)V

    .line 1170
    return-void
.end method

.method notifyPhoneStateChanged()V
    .locals 1

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyPhoneState(Lcom/android/internal/telephony/Phone;)V

    .line 1165
    return-void
.end method

.method public notifyPreciseCallStateChanged()V
    .locals 0

    .prologue
    .line 1159
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->notifyPreciseCallStateChangedP()V

    .line 1160
    return-void
.end method

.method public notifyUnknownConnection()V
    .locals 0

    .prologue
    .line 1175
    return-void
.end method

.method public onUpdateIccAvailability()V
    .locals 0

    .prologue
    .line 785
    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 856
    const-string v0, "IMSPHONE"

    const-string v1, "method registerForSuppServiceNotification is NOT supported in IMS!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    return-void
.end method

.method public rejectCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 864
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->rejectCall()V

    .line 865
    return-void
.end method

.method public removeReferences()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 221
    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mSMS:Lcom/android/internal/telephony/ims/IMSSMSDispatcher;

    .line 222
    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 223
    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

    .line 224
    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mSST:Lcom/android/internal/telephony/ims/IMSServiceStateTracker;

    .line 226
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->removeReferences()V

    .line 228
    return-void
.end method

.method public selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .locals 0
    .parameter "network"
    .parameter "response"

    .prologue
    .line 1424
    return-void
.end method

.method public selectNetworkManually(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "operatorNumeric"
    .parameter "operatorAlphaLong"
    .parameter "response"

    .prologue
    .line 1402
    return-void
.end method

.method public sendDtmf(C)V
    .locals 3
    .parameter "c"

    .prologue
    .line 876
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 877
    const-string v0, "IMSPHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendDtmf called with invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    :cond_0
    :goto_0
    return-void

    .line 880
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    .line 881
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    goto :goto_0
.end method

.method public sendUssdResponse(Ljava/lang/String;)V
    .locals 2
    .parameter "ussdMessge"

    .prologue
    .line 891
    const-string v0, "IMSPHONE"

    const-string v1, "sendUssdResponse: not possible in IMS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    return-void
.end method

.method public setCBMessage(ZCI[S)V
    .locals 2
    .parameter "cbEnable"
    .parameter "selectId"
    .parameter "idCount"
    .parameter "msgId"

    .prologue
    .line 767
    const-string v0, "IMSPHONE"

    const-string v1, "IMSPHONEsetCBMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    return-void
.end method

.method public setCSCCbConfig(Z)Z
    .locals 2
    .parameter "cbEnable"

    .prologue
    .line 772
    const-string v0, "IMSPHONE"

    const-string v1, "IMSPHONEsetCSCCbConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    const/4 v0, 0x0

    return v0
.end method

.method public setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;ILandroid/os/Message;)Z
    .locals 1
    .parameter "cbAction"
    .parameter "commandInterfacecbFlavour"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "onComplete"

    .prologue
    .line 1313
    const/4 v0, 0x0

    return v0
.end method

.method public setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 1
    .parameter "cbAction"
    .parameter "commandInterfacecbFlavour"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 1305
    const/4 v0, 0x0

    return v0
.end method

.method public setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V
    .locals 0
    .parameter "commandInterfaceCFAction"
    .parameter "commandInterfaceCFReason"
    .parameter "dialingNumber"
    .parameter "timerSeconds"
    .parameter "serviceClass"
    .parameter "onComplete"

    .prologue
    .line 1322
    return-void
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 2
    .parameter "commandInterfaceCFReason"
    .parameter "commandInterfaceCFAction"
    .parameter "dialingNumber"
    .parameter "timerSeconds"
    .parameter "onComplete"

    .prologue
    .line 901
    const-string v0, "IMSPHONE"

    const-string v1, "setCallForwardingOption: not possible in IMS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    return-void
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 2
    .parameter "enable"
    .parameter "onComplete"

    .prologue
    .line 909
    const-string v0, "IMSPHONE"

    const-string v1, "method setCallWaiting is NOT supported in IMS!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    return-void
.end method

.method public setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .locals 0
    .parameter "configValuesArray"
    .parameter "response"

    .prologue
    .line 920
    return-void
.end method

.method public setDataConnectionToggleExt()I
    .locals 1

    .prologue
    .line 795
    const/4 v0, 0x0

    return v0
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 927
    const-string v0, "IMSPHONE"

    const-string v1, "not needed for IMS phone setDataRoamingEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    return-void
.end method

.method public setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "rand"
    .parameter "btid"
    .parameter "keyLifetime"
    .parameter "onComplete"

    .prologue
    .line 1447
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    .line 1448
    :cond_0
    return-void
.end method

.method public setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "alphaTag"
    .parameter "number"
    .parameter "onComplete"

    .prologue
    .line 936
    const-string v0, "IMSPHONE"

    const-string v1, "setLine1Number: not possible in IMS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    return-void
.end method

.method public setLineId(ILandroid/os/Message;)V
    .locals 0
    .parameter "line"
    .parameter "response"

    .prologue
    .line 1362
    return-void
.end method

.method public setMultiSmsState(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 803
    return-void
.end method

.method public setMute(Z)V
    .locals 1
    .parameter "muted"

    .prologue
    .line 945
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->setMute(Z)V

    .line 946
    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 953
    const-string v0, "IMSPHONE"

    const-string v1, "method setNetworkSelectionModeAutomatic is NOT supported in IMS!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    return-void
.end method

.method public setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 961
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mPostDialHandler:Landroid/os/Registrant;

    .line 962
    return-void
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 2
    .parameter "commandInterfaceCLIRMode"
    .parameter "onComplete"

    .prologue
    .line 970
    const-string v0, "IMSPHONE"

    const-string v1, "setOutgoingCallerIdDisplay: not possible in IMS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    return-void
.end method

.method public setPreferredNetworkList(ILjava/lang/String;Ljava/lang/String;IIIILandroid/os/Message;)V
    .locals 0
    .parameter "index"
    .parameter "operator"
    .parameter "plmn"
    .parameter "gsmAct"
    .parameter "gsmCompactAct"
    .parameter "utranAct"
    .parameter "mode"
    .parameter "response"

    .prologue
    .line 1461
    return-void
.end method

.method public setRadioPower(Z)V
    .locals 0
    .parameter "power"

    .prologue
    .line 1427
    return-void
.end method

.method public setState(Lcom/android/internal/telephony/Phone$State;)V
    .locals 1
    .parameter "st"

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

    iput-object p1, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    .line 1333
    return-void
.end method

.method public setSubscription(I)V
    .locals 0
    .parameter "subId"

    .prologue
    .line 1396
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "alphaTag"
    .parameter "voiceMailNumber"
    .parameter "onComplete"

    .prologue
    .line 990
    return-void
.end method

.method public startDtmf(C)V
    .locals 3
    .parameter "c"

    .prologue
    .line 997
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 998
    const-string v0, "IMSPHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDtmf called with invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    :goto_0
    return-void

    .line 1001
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->startDtmf(CLandroid/os/Message;)V

    goto :goto_0
.end method

.method public stopDtmf()V
    .locals 2

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->stopDtmf(Landroid/os/Message;)V

    .line 1011
    return-void
.end method

.method public storeVoiceMailNumber(Ljava/lang/String;)V
    .locals 3
    .parameter "number"

    .prologue
    .line 1143
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1144
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1145
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "vm_number_key_cdma"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1146
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1148
    return-void
.end method

.method public switchHoldingAndActive()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->switchWaitingOrHoldingAndActive()V

    .line 1019
    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 1026
    const-string v0, "IMSPHONE"

    const-string v1, "method unregisterForSuppServiceNotification is NOT supported in IMS!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    return-void
.end method

.method public updateServiceLocation()V
    .locals 0

    .prologue
    .line 1328
    return-void
.end method

.method public updateServiceLocation(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mSST:Lcom/android/internal/telephony/ims/IMSServiceStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;->getLacAndCid(Landroid/os/Message;)V

    .line 1035
    return-void
.end method
