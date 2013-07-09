.class public final Lcom/android/internal/telephony/uicc/RuimRecords;
.super Lcom/android/internal/telephony/uicc/IccRecords;
.source "RuimRecords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/RuimRecords$1;,
        Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimEuimidLoaded;,
        Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimEprlLoaded;,
        Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimCdmaHomeLoaded;,
        Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;,
        Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMdnLoaded;,
        Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;,
        Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;,
        Lcom/android/internal/telephony/uicc/RuimRecords$EfPlLoaded;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_APP_READY:I = 0x1

.field private static final EVENT_GET_ALL_SMS_DONE:I = 0x12

.field private static final EVENT_GET_CDMA_SUBSCRIPTION_DONE:I = 0xa

.field private static final EVENT_GET_DEVICE_IDENTITY_DONE:I = 0x4

.field private static final EVENT_GET_ICCID_DONE:I = 0x5

.field private static final EVENT_GET_IMSI_DONE:I = 0x3

.field private static final EVENT_GET_MASTERIMSI_DONE:I = 0x20

.field private static final EVENT_GET_ROAMING_DONE:I = 0x24

.field private static final EVENT_GET_RUIMID_DONE:I = 0x25

.field private static final EVENT_GET_SMS_DONE:I = 0x16

.field private static final EVENT_GET_SPONIMSI1_DONE:I = 0x21

.field private static final EVENT_GET_SPONIMSI2_DONE:I = 0x22

.field private static final EVENT_GET_SPONIMSI3_DONE:I = 0x23

.field private static final EVENT_GET_SST_DONE:I = 0x11

.field private static final EVENT_MARK_SMS_READ_DONE:I = 0x13

.field private static final EVENT_RUIM_REFRESH:I = 0x1f

.field private static final EVENT_SMS_ON_RUIM:I = 0x15

.field private static final EVENT_UPDATE_DONE:I = 0xe

.field static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field static final PROPERTY_CDMA_RUIMID:Ljava/lang/String; = "ril.cdma.phone.id"

.field static final PROPERTY_SIM_ROAMING:Ljava/lang/String; = "gsm.sim.roaming"

.field protected static final UNACTIVATED_MIN_VALUE:Ljava/lang/String; = "1111110111"


# instance fields
.field public isAvailableSMSP:Z

.field mCsimSpnDisplayCondition:Z

.field private mEFli:[B

.field private mEFpl:[B

.field private mHomeNetworkId:Ljava/lang/String;

.field private mHomeSystemId:Ljava/lang/String;

.field private mImsi:Ljava/lang/String;

.field private mMdn:Ljava/lang/String;

.field private mMin:Ljava/lang/String;

.field private mMin2Min1:Ljava/lang/String;

.field private mMyMobileNumber:Ljava/lang/String;

.field private mPrlVersion:Ljava/lang/String;

.field private mSponImsi:[Ljava/lang/String;

.field private m_ota_commited:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 4
    .parameter "app"
    .parameter "c"
    .parameter "ci"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 119
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 64
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->m_ota_commited:Z

    .line 74
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFpl:[B

    .line 75
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFli:[B

    .line 76
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCsimSpnDisplayCondition:Z

    .line 115
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->isAvailableSMSP:Z

    .line 121
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .line 123
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->recordsRequested:Z

    .line 126
    iput v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->recordsToLoad:I

    .line 129
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x1f

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 132
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->resetRecords()V

    .line 134
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 139
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/uicc/RuimRecords;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFpl:[B

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/uicc/RuimRecords;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFpl:[B

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFli:[B

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/uicc/RuimRecords;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFli:[B

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/uicc/RuimRecords;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMdn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMdn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/uicc/RuimRecords;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->adjstMinDigits(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/uicc/RuimRecords;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mHomeSystemId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mHomeNetworkId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/uicc/RuimRecords;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->onGetCSimEprlDone(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/uicc/RuimRecords;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->onGetCSimEuimidDone(Landroid/os/AsyncResult;)V

    return-void
.end method

.method private adjstMinDigits(I)I
    .locals 1
    .parameter "digits"

    .prologue
    .line 218
    add-int/lit8 p1, p1, 0x6f

    .line 219
    rem-int/lit8 v0, p1, 0xa

    if-nez v0, :cond_0

    add-int/lit8 p1, p1, -0xa

    .line 220
    :cond_0
    div-int/lit8 v0, p1, 0xa

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_1

    add-int/lit8 p1, p1, -0x64

    .line 221
    :cond_1
    div-int/lit8 v0, p1, 0x64

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_2

    add-int/lit16 p1, p1, -0x3e8

    .line 222
    :cond_2
    return p1
.end method

.method private fetchRuimRecords()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x64

    .line 849
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->recordsRequested:Z

    .line 851
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RuimRecords:fetchRuimRecords "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->recordsToLoad:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V

    .line 856
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->recordsToLoad:I

    .line 859
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x2fe2

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 861
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->recordsToLoad:I

    .line 863
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x2f05

    new-instance v2, Lcom/android/internal/telephony/uicc/RuimRecords$EfPlLoaded;

    invoke-direct {v2, p0, v5}, Lcom/android/internal/telephony/uicc/RuimRecords$EfPlLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$1;)V

    invoke-virtual {p0, v4, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 865
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->recordsToLoad:I

    .line 867
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f3a

    new-instance v2, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;

    invoke-direct {v2, p0, v5}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$1;)V

    invoke-virtual {p0, v4, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 869
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->recordsToLoad:I

    .line 871
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f41

    new-instance v2, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;

    invoke-direct {v2, p0, v5}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$1;)V

    invoke-virtual {p0, v4, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 873
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->recordsToLoad:I

    .line 875
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f44

    new-instance v2, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMdnLoaded;

    invoke-direct {v2, p0, v5}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMdnLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$1;)V

    invoke-virtual {p0, v4, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 877
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->recordsToLoad:I

    .line 879
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f22

    new-instance v2, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;

    invoke-direct {v2, p0, v5}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$1;)V

    invoke-virtual {p0, v4, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 881
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->recordsToLoad:I

    .line 883
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f28

    new-instance v2, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimCdmaHomeLoaded;

    invoke-direct {v2, p0, v5}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimCdmaHomeLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$1;)V

    invoke-virtual {p0, v4, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 885
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->recordsToLoad:I

    .line 889
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f5a

    const/4 v2, 0x4

    new-instance v3, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimEprlLoaded;

    invoke-direct {v3, p0, v5}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimEprlLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$1;)V

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(IILandroid/os/Message;)V

    .line 891
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->recordsToLoad:I

    .line 896
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f74

    new-instance v2, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimEuimidLoaded;

    invoke-direct {v2, p0, v5}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimEuimidLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$1;)V

    invoke-virtual {p0, v4, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 898
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->recordsToLoad:I

    .line 923
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RuimRecords:fetchRuimRecords "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->recordsToLoad:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->recordsRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    return-void
.end method

.method private findBestLanguage([B)Ljava/lang/String;
    .locals 11
    .parameter "languages"

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x2

    .line 751
    const/4 v0, 0x0

    .line 752
    .local v0, bestMatch:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v5

    .line 754
    .local v5, locales:[Ljava/lang/String;
    if-eqz p1, :cond_0

    if-nez v5, :cond_2

    :cond_0
    move-object v4, v6

    .line 772
    :cond_1
    :goto_0
    return-object v4

    .line 757
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    add-int/lit8 v7, v2, 0x1

    array-length v8, p1

    if-ge v7, v8, :cond_5

    .line 759
    :try_start_0
    new-instance v4, Ljava/lang/String;

    const/4 v7, 0x2

    const-string v8, "ISO-8859-1"

    invoke-direct {v4, p1, v2, v7, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 760
    .local v4, lang:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, j:I
    :goto_2
    array-length v7, v5

    if-ge v3, v7, :cond_4

    .line 761
    aget-object v7, v5, v3

    if-eqz v7, :cond_3

    aget-object v7, v5, v3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v10, :cond_3

    aget-object v7, v5, v3

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_1

    .line 760
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 766
    :cond_4
    if-eqz v0, :cond_6

    .end local v3           #j:I
    .end local v4           #lang:Ljava/lang/String;
    :cond_5
    move-object v4, v6

    .line 772
    goto :goto_0

    .line 767
    :catch_0
    move-exception v1

    .line 768
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    const-string v7, "Failed to parse SIM language records"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 757
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :cond_6
    add-int/lit8 v2, v2, 0x2

    goto :goto_1
.end method

.method private handleRuimRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V
    .locals 3
    .parameter "refreshResponse"

    .prologue
    .line 977
    if-nez p1, :cond_1

    .line 978
    const-string v0, "handleRuimRefresh received without input"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1015
    :cond_0
    :goto_0
    return-void

    .line 982
    :cond_1
    iget-object v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 988
    :cond_2
    iget v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    packed-switch v0, :pswitch_data_0

    .line 1012
    const-string v0, "handleRuimRefresh with unknown operation"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 990
    :pswitch_0
    const-string v0, "handleRuimRefresh with SIM_REFRESH_FILE_UPDATED"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 991
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    .line 992
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->fetchRuimRecords()V

    goto :goto_0

    .line 995
    :pswitch_1
    const-string v0, "handleRuimRefresh with SIM_REFRESH_INIT"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 997
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->fetchRuimRecords()V

    goto :goto_0

    .line 1000
    :pswitch_2
    const-string v0, "handleRuimRefresh with SIM_REFRESH_RESET"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1001
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    goto :goto_0

    .line 988
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onGetCSimEprlDone(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "ar"

    .prologue
    const/4 v4, 0x3

    .line 449
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    .line 450
    .local v0, data:[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CSIM_EPRL="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 453
    array-length v2, v0

    if-le v2, v4, :cond_0

    .line 454
    const/4 v2, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    aget-byte v3, v0, v4

    and-int/lit16 v3, v3, 0xff

    or-int v1, v2, v3

    .line 455
    .local v1, prlId:I
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPrlVersion:Ljava/lang/String;

    .line 457
    .end local v1           #prlId:I
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CSIM PRL version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPrlVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 458
    return-void
.end method

.method private onGetCSimEuimidDone(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "ar"

    .prologue
    .line 474
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v1, v3

    check-cast v1, [B

    .line 476
    .local v1, data:[B
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0xe

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 477
    .local v0, bld:Ljava/lang/StringBuilder;
    const/4 v2, 0x6

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    .line 478
    aget-byte v3, v1, v2

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 481
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mEuimid:Ljava/lang/String;

    .line 483
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CSIM EUIMID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mEuimid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 484
    const-string v3, "ril.euimid"

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mEuimid:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    return-void
.end method

.method private setLocaleFromCsim()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 776
    const/4 v2, 0x0

    .line 778
    .local v2, prefLang:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFli:[B

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->findBestLanguage([B)Ljava/lang/String;

    move-result-object v2

    .line 780
    if-nez v2, :cond_0

    .line 781
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFpl:[B

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->findBestLanguage([B)Ljava/lang/String;

    move-result-object v2

    .line 784
    :cond_0
    if-eqz v2, :cond_2

    .line 786
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getIMSI()Ljava/lang/String;

    move-result-object v1

    .line 787
    .local v1, imsi:Ljava/lang/String;
    const/4 v0, 0x0

    .line 788
    .local v0, country:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 789
    const/4 v3, 0x3

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v0

    .line 792
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting locale to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 793
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, v0, v5}, Lcom/android/internal/telephony/MccTable;->setSystemLocale(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 797
    .end local v0           #country:Ljava/lang/String;
    .end local v1           #imsi:Ljava/lang/String;
    :goto_0
    return-void

    .line 795
    :cond_2
    const-string v3, "No suitable CSIM selected locale"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "val"

    .prologue
    .line 1049
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1050
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    :cond_0
    return-void
.end method


# virtual methods
.method dispose()V
    .locals 2

    .prologue
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disposing RuimRecords "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccRefresh(Landroid/os/Handler;)V

    .line 146
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 147
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->resetRecords()V

    .line 148
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->dispose()V

    .line 149
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 153
    const-string v0, "RuimRecords finalized"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin2Min1:Ljava/lang/String;

    return-object v0
.end method

.method public getCsimSpnDisplayCondition()Z
    .locals 1

    .prologue
    .line 1034
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCsimSpnDisplayCondition:Z

    return v0
.end method

.method public getDisplayRule(Ljava/lang/String;)I
    .locals 1
    .parameter "plmn"

    .prologue
    .line 935
    const/4 v0, 0x0

    return v0
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    return-object v0
.end method

.method public getMdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMdn:Ljava/lang/String;

    return-object v0
.end method

.method public getMdnNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMyMobileNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getMin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin:Ljava/lang/String;

    return-object v0
.end method

.method public getNid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mHomeNetworkId:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 239
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 240
    const/4 v1, 0x0

    .line 253
    :goto_0
    return-object v1

    .line 243
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mncLength:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mncLength:I

    if-eqz v1, :cond_1

    .line 246
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mncLength:I

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 252
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 253
    .local v0, mcc:I
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getPrlVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPrlVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mHomeSystemId:Ljava/lang/String;

    return-object v0
.end method

.method public getSponImsi()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mSponImsi:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mSponImsi:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVoiceMessageCount()I
    .locals 2

    .prologue
    .line 972
    const-string v0, "CDMA"

    const-string v1, "RuimRecords:getVoiceMessageCount - NOP for CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    const/4 v0, 0x0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .parameter "msg"

    .prologue
    .line 494
    const/4 v6, 0x0

    .line 496
    .local v6, isRecordLoadResponse:Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 497
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Received message "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] while being destroyed. Ignoring."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/uicc/RuimRecords;->loge(Ljava/lang/String;)V

    .line 748
    :cond_0
    :goto_0
    return-void

    .line 502
    :cond_1
    :try_start_0
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    packed-switch v12, :pswitch_data_0

    .line 737
    :pswitch_0
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/IccRecords;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 744
    :cond_2
    :goto_1
    if-eqz v6, :cond_0

    .line 745
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->onRecordLoaded()V

    goto :goto_0

    .line 504
    :pswitch_1
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->onReady()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 739
    :catch_0
    move-exception v5

    .line 741
    .local v5, exc:Ljava/lang/RuntimeException;
    :try_start_2
    const-string v12, "CDMA"

    const-string v13, "Exception parsing RUIM record"

    invoke-static {v12, v13, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 744
    if-eqz v6, :cond_0

    goto :goto_2

    .line 508
    .end local v5           #exc:Ljava/lang/RuntimeException;
    :pswitch_2
    :try_start_3
    const-string v12, "Event EVENT_GET_DEVICE_IDENTITY_DONE Received"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 744
    :catchall_0
    move-exception v12

    if-eqz v6, :cond_3

    .line 745
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->onRecordLoaded()V

    .line 744
    :cond_3
    throw v12

    .line 513
    :pswitch_3
    const/4 v6, 0x1

    .line 515
    :try_start_4
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 516
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v12, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v12, :cond_4

    .line 517
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception querying IMSI, Exception:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/uicc/RuimRecords;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 521
    :cond_4
    iget-object v12, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    .line 525
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x6

    if-lt v12, v13, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0xf

    if-le v12, v13, :cond_6

    .line 526
    :cond_5
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "invalid IMSI "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/uicc/RuimRecords;->loge(Ljava/lang/String;)V

    .line 527
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    .line 530
    :cond_6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IMSI: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x6

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "xxxxxxxxx"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 532
    const-string v12, "debug.ruimrecord.done"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x3

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v8

    .line 535
    .local v8, operatorNumeric:Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 536
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x6

    if-gt v12, v13, :cond_2

    .line 537
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/IccRecords;->mContext:Landroid/content/Context;

    invoke-static {v12, v8}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 543
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v8           #operatorNumeric:Ljava/lang/String;
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 544
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v12, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v12, [Ljava/lang/String;

    move-object v0, v12

    check-cast v0, [Ljava/lang/String;

    move-object v7, v0

    .line 545
    .local v7, localTemp:[Ljava/lang/String;
    iget-object v12, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v12, :cond_2

    .line 549
    const/4 v12, 0x0

    aget-object v12, v7, v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMyMobileNumber:Ljava/lang/String;

    .line 550
    const/4 v12, 0x3

    aget-object v12, v7, v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin2Min1:Ljava/lang/String;

    .line 551
    const/4 v12, 0x4

    aget-object v12, v7, v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPrlVersion:Ljava/lang/String;

    .line 553
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MDN: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMyMobileNumber:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " MIN: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin2Min1:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 558
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v7           #localTemp:[Ljava/lang/String;
    :pswitch_5
    const/4 v6, 0x1

    .line 560
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 561
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v12, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v12, [B

    move-object v0, v12

    check-cast v0, [B

    move-object v2, v0

    .line 563
    .local v2, data:[B
    iget-object v12, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v12, :cond_2

    .line 567
    const/4 v12, 0x0

    array-length v13, v2

    invoke-static {v2, v12, v13}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/uicc/IccRecords;->iccid:Ljava/lang/String;

    .line 569
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "iccid: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/uicc/IccRecords;->iccid:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 574
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v2           #data:[B
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 575
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v12, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v12, :cond_2

    .line 576
    const-string v12, "CDMA"

    const-string v13, "RuimRecords update failed"

    iget-object v14, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v12, v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 584
    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_7
    const-string v12, "CDMA"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Event not supported: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 589
    :pswitch_8
    const-string v12, "Event EVENT_GET_SST_DONE Received"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 593
    :pswitch_9
    const/4 v6, 0x0

    .line 594
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 595
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v12, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v12, :cond_2

    .line 596
    iget-object v12, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v12, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/uicc/RuimRecords;->handleRuimRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    goto/16 :goto_1

    .line 602
    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_a
    const/4 v6, 0x1

    .line 604
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 605
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v12, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v12, [B

    move-object v0, v12

    check-cast v0, [B

    move-object v2, v0

    .line 607
    .restart local v2       #data:[B
    iget-object v12, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v12, :cond_7

    .line 608
    const-string v12, "CDMA"

    const-string v13, "Invalid or missing EF[masterImsi]"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 613
    :cond_7
    :try_start_5
    const-string v12, "CDMA"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[masterImsi]: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x2

    const/16 v15, 0x8

    invoke-static {v2, v14, v15}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    .line 614
    :catch_1
    move-exception v3

    .line 615
    .local v3, e:Ljava/lang/StringIndexOutOfBoundsException;
    :try_start_6
    const-string v12, "CDMA"

    const-string v13, "MASTER_IMSI was not exist in this card"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 620
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v2           #data:[B
    .end local v3           #e:Ljava/lang/StringIndexOutOfBoundsException;
    :pswitch_b
    const/4 v6, 0x1

    .line 622
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 623
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v12, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v12, [B

    move-object v0, v12

    check-cast v0, [B

    move-object v2, v0

    .line 625
    .restart local v2       #data:[B
    iget-object v12, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v12, :cond_8

    .line 626
    const-string v12, "CDMA"

    const-string v13, "Invalid or missing EF[sponImsi1]"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 630
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v13, 0x0

    new-instance v14, Ljava/lang/String;

    invoke-direct {v14}, Ljava/lang/String;-><init>()V

    aput-object v14, v12, v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    .line 632
    :try_start_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v13, 0x0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x2

    aget-byte v15, v2, v15

    shr-int/lit8 v15, v15, 0x4

    and-int/lit8 v15, v15, 0xf

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x3

    const/16 v16, 0x1

    aget-byte v16, v2, v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    invoke-static {v2, v15, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ";"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x22b

    array-length v0, v2

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    invoke-static {v2, v15, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    .line 638
    :goto_3
    :try_start_8
    const-string v12, "CDMA"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[sponImsi1]: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 633
    :catch_2
    move-exception v4

    .line 634
    .local v4, ex:Ljava/lang/Exception;
    const-string v12, "CDMA"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[sponImsi1] Ex -"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 636
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, ""

    aput-object v14, v12, v13

    goto :goto_3

    .line 642
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v2           #data:[B
    .end local v4           #ex:Ljava/lang/Exception;
    :pswitch_c
    const/4 v6, 0x1

    .line 644
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 645
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v12, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v12, [B

    move-object v0, v12

    check-cast v0, [B

    move-object v2, v0

    .line 647
    .restart local v2       #data:[B
    iget-object v12, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v12, :cond_9

    .line 648
    const-string v12, "CDMA"

    const-string v13, "Invalid or missing EF[sponImsi2]"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 652
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v13, 0x1

    new-instance v14, Ljava/lang/String;

    invoke-direct {v14}, Ljava/lang/String;-><init>()V

    aput-object v14, v12, v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    .line 654
    :try_start_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v13, 0x1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x2

    aget-byte v15, v2, v15

    shr-int/lit8 v15, v15, 0x4

    and-int/lit8 v15, v15, 0xf

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x3

    const/16 v16, 0x1

    aget-byte v16, v2, v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    invoke-static {v2, v15, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ";"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x22b

    array-length v0, v2

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    invoke-static {v2, v15, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0

    .line 661
    :goto_4
    :try_start_a
    const-string v12, "CDMA"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[sponImsi2]: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 655
    :catch_3
    move-exception v4

    .line 656
    .restart local v4       #ex:Ljava/lang/Exception;
    const-string v12, "CDMA"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[sponImsi2] Ex -"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 658
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v13, 0x1

    const-string v14, ""

    aput-object v14, v12, v13

    goto :goto_4

    .line 665
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v2           #data:[B
    .end local v4           #ex:Ljava/lang/Exception;
    :pswitch_d
    const/4 v6, 0x1

    .line 667
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 668
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v12, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v12, [B

    move-object v0, v12

    check-cast v0, [B

    move-object v2, v0

    .line 670
    .restart local v2       #data:[B
    iget-object v12, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v12, :cond_a

    .line 671
    const-string v12, "CDMA"

    const-string v13, "Invalid or missing EF[sponImsi3]"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 675
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v13, 0x2

    new-instance v14, Ljava/lang/String;

    invoke-direct {v14}, Ljava/lang/String;-><init>()V

    aput-object v14, v12, v13
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0

    .line 677
    :try_start_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v13, 0x2

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x2

    aget-byte v15, v2, v15

    shr-int/lit8 v15, v15, 0x4

    and-int/lit8 v15, v15, 0xf

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x3

    const/16 v16, 0x1

    aget-byte v16, v2, v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    invoke-static {v2, v15, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ";"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x22b

    array-length v0, v2

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    invoke-static {v2, v15, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_0

    .line 683
    :goto_5
    :try_start_c
    const-string v12, "CDMA"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[sponImsi3]: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v15, 0x2

    aget-object v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 678
    :catch_4
    move-exception v4

    .line 679
    .restart local v4       #ex:Ljava/lang/Exception;
    const-string v12, "CDMA"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[sponImsi3] Ex -"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 681
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v13, 0x2

    const-string v14, ""

    aput-object v14, v12, v13

    goto :goto_5

    .line 688
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v2           #data:[B
    .end local v4           #ex:Ljava/lang/Exception;
    :pswitch_e
    const/4 v6, 0x1

    .line 690
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 691
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v12, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v12, [B

    move-object v0, v12

    check-cast v0, [B

    move-object v2, v0

    .line 693
    .restart local v2       #data:[B
    iget-object v12, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v12, :cond_b

    .line 694
    const-string v12, "CDMA"

    const-string v13, "Invalid or missing EF[roaming]"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 698
    :cond_b
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    .line 699
    .local v9, roaming:Ljava/lang/String;
    const-string v12, "CDMA"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[roaming]: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    const-string v12, "gsm.sim.roaming"

    invoke-static {v12, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 704
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v2           #data:[B
    .end local v9           #roaming:Ljava/lang/String;
    :pswitch_f
    const-string v11, ""

    .line 705
    .local v11, ruimidRaw:Ljava/lang/String;
    const-string v10, ""

    .line 706
    .local v10, ruimidConv:Ljava/lang/String;
    const/4 v6, 0x1

    .line 708
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 709
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v12, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v12, [B

    move-object v0, v12

    check-cast v0, [B

    move-object v2, v0

    .line 711
    .restart local v2       #data:[B
    iget-object v12, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v12, :cond_c

    .line 712
    const-string v12, "CDMA"

    const-string v13, "Invalid or missing EF[RUIMID]"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_1

    .line 717
    :cond_c
    :try_start_d
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_0

    move-result-object v11

    .line 723
    :goto_6
    :try_start_e
    const-string v12, "CDMA"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[ruimid]: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0xa

    if-le v12, v13, :cond_2

    .line 725
    const-string v12, "CDMA"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[ruimid]converterd: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x8

    const/16 v15, 0xa

    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x6

    const/16 v15, 0x8

    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x4

    const/4 v15, 0x6

    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x2

    const/4 v15, 0x4

    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v13, 0x8

    const/16 v14, 0xa

    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x6

    const/16 v14, 0x8

    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x4

    const/4 v14, 0x6

    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x2

    const/4 v14, 0x4

    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 731
    const-string v12, "ril.cdma.phone.id"

    invoke-static {v12, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 718
    :catch_5
    move-exception v4

    .line 719
    .restart local v4       #ex:Ljava/lang/Exception;
    const-string v12, "CDMA"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[ruimid] Ex -"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    const-string v11, ""
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_0

    goto/16 :goto_6

    .line 502
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public isProvisioned()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 946
    const-string v2, "persist.radio.test-csim"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 958
    :cond_0
    :goto_0
    return v0

    .line 950
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-nez v2, :cond_2

    move v0, v1

    .line 951
    goto :goto_0

    .line 954
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMdn:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 956
    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 1038
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RuimRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 1043
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RuimRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    return-void
.end method

.method protected onAllRecordsLoaded()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 816
    const-string v1, "record load complete"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 822
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 823
    .local v0, operator:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 824
    const-string v1, "gsm.sim.operator.numeric"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 828
    const-string v1, "gsm.sim.operator.iso-country"

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->setLocaleFromCsim()V

    .line 836
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v5, v5, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 838
    return-void
.end method

.method public onReady()V
    .locals 2

    .prologue
    .line 842
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->fetchRuimRecords()V

    .line 844
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    .line 845
    return-void
.end method

.method protected onRecordLoaded()V
    .locals 2

    .prologue
    .line 803
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->recordsToLoad:I

    .line 804
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRecordLoaded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->recordsToLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " requested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->recordsRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 806
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->recordsToLoad:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->recordsRequested:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 807
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->onAllRecordsLoaded()V

    .line 812
    :cond_0
    :goto_0
    return-void

    .line 808
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->recordsToLoad:I

    if-gez v0, :cond_0

    .line 809
    const-string v0, "recordsToLoad <0, programmer error suspected"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->loge(Ljava/lang/String;)V

    .line 810
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->recordsToLoad:I

    goto :goto_0
.end method

.method public onRefresh(Z[I)V
    .locals 0
    .parameter "fileChanged"
    .parameter "fileList"

    .prologue
    .line 208
    if-eqz p1, :cond_0

    .line 212
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->fetchRuimRecords()V

    .line 214
    :cond_0
    return-void
.end method

.method protected resetRecords()V
    .locals 1

    .prologue
    .line 157
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mncLength:I

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->iccid:Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->recordsRequested:Z

    .line 172
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "alphaTag"
    .parameter "voiceNumber"
    .parameter "onComplete"

    .prologue
    .line 195
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/uicc/IccException;

    const-string v2, "setVoiceMailNumber not implemented"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/uicc/IccException;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 197
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 198
    const-string v0, "method setVoiceMailNumber is not implemented"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->loge(Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public setVoiceMessageWaiting(IILandroid/os/Message;)V
    .locals 2
    .parameter "line"
    .parameter "countWaiting"
    .parameter "onComplete"

    .prologue
    .line 965
    const-string v0, "CDMA"

    const-string v1, "RuimRecords:setVoiceMessageWaiting - NOP for CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    return-void
.end method
