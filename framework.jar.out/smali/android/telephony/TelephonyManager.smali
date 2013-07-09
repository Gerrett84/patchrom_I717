.class public Landroid/telephony/TelephonyManager;
.super Ljava/lang/Object;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/TelephonyManager$GbaBootstrappingResponse;
    }
.end annotation


# static fields
.field public static final ACTION_PHONE_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.PHONE_STATE"

.field public static final CALL_STATE_IDLE:I = 0x0

.field public static final CALL_STATE_OFFHOOK:I = 0x2

.field public static final CALL_STATE_RINGING:I = 0x1

.field public static final DATA_ACTIVITY_DORMANT:I = 0x4

.field public static final DATA_ACTIVITY_IN:I = 0x1

.field public static final DATA_ACTIVITY_INOUT:I = 0x3

.field public static final DATA_ACTIVITY_NONE:I = 0x0

.field public static final DATA_ACTIVITY_OUT:I = 0x2

.field public static final DATA_CONNECTED:I = 0x2

.field public static final DATA_CONNECTING:I = 0x1

.field public static final DATA_DISCONNECTED:I = 0x0

.field public static final DATA_SUSPENDED:I = 0x3

.field public static final DATA_UNKNOWN:I = -0x1

.field public static final DEFAULT_SUB:I = 0x0

.field public static final EXTRA_INCOMING_NUMBER:Ljava/lang/String; = "incoming_number"

.field public static final EXTRA_STATE:Ljava/lang/String; = "state"

.field public static final EXTRA_STATE_IDLE:Ljava/lang/String; = null

.field public static final EXTRA_STATE_OFFHOOK:Ljava/lang/String; = null

.field public static final EXTRA_STATE_RINGING:Ljava/lang/String; = null

.field public static final EXTRA_VOIP_CALLSTATE:Ljava/lang/String; = "is_voip_callstate"

.field public static final ICC_STATE_RUIM_CORPORATE_LOCKED:I = 0xe

.field public static final ICC_STATE_RUIM_HRPD_LOCKED:I = 0xd

.field public static final ICC_STATE_RUIM_NETWORK1_LOCKED:I = 0xb

.field public static final ICC_STATE_RUIM_NETWORK2_LOCKED:I = 0xc

.field public static final ICC_STATE_RUIM_RUIM_LOCKED:I = 0x10

.field public static final ICC_STATE_RUIM_SERVICE_PROVIDER_LOCKED:I = 0xf

.field public static final ICC_STATE_SIM_CORPORATE_LOCKED:I = 0x8

.field public static final ICC_STATE_SIM_NETWORK_SUBSET_LOCKED:I = 0x7

.field public static final ICC_STATE_SIM_SERVICE_PROVIDER_LOCKED:I = 0x9

.field public static final ICC_STATE_SIM_SIM_LOCKED:I = 0xa

.field private static final MAX_PHONE_COUNT_DS:I = 0x2

.field public static final NETWORK_CLASS_2_G:I = 0x1

.field public static final NETWORK_CLASS_3_G:I = 0x2

.field public static final NETWORK_CLASS_4_G:I = 0x3

.field public static final NETWORK_CLASS_UNKNOWN:I = 0x0

.field public static final NETWORK_TYPE_1xRTT:I = 0x7

.field public static final NETWORK_TYPE_CDMA:I = 0x4

.field public static final NETWORK_TYPE_DC:I = 0x1e

.field public static final NETWORK_TYPE_EDGE:I = 0x2

.field public static final NETWORK_TYPE_EHRPD:I = 0xe

.field public static final NETWORK_TYPE_EVDO_0:I = 0x5

.field public static final NETWORK_TYPE_EVDO_A:I = 0x6

.field public static final NETWORK_TYPE_EVDO_B:I = 0xc

.field public static final NETWORK_TYPE_GPRS:I = 0x1

.field public static final NETWORK_TYPE_HSDPA:I = 0x8

.field public static final NETWORK_TYPE_HSPA:I = 0xa

.field public static final NETWORK_TYPE_HSPAP:I = 0xf

.field public static final NETWORK_TYPE_HSUPA:I = 0x9

.field public static final NETWORK_TYPE_IDEN:I = 0xb

.field public static final NETWORK_TYPE_LTE:I = 0xd

.field public static final NETWORK_TYPE_TD_SCDMA:I = 0x11

.field public static final NETWORK_TYPE_UMTS:I = 0x3

.field public static final NETWORK_TYPE_UNKNOWN:I = 0x0

.field public static final PHONE_TYPE_CDMA:I = 0x2

.field public static final PHONE_TYPE_GSM:I = 0x1

.field public static final PHONE_TYPE_IMS:I = 0x4

.field public static final PHONE_TYPE_NONE:I = 0x0

.field public static final PHONE_TYPE_SIP:I = 0x3

.field private static final PREFIX_TABLE:[Ljava/lang/String; = null

.field public static final SIM_STATE_ABSENT:I = 0x1

.field public static final SIM_STATE_CARD_IO_ERROR:I = 0x6

.field public static final SIM_STATE_NETWORK_LOCKED:I = 0x4

.field public static final SIM_STATE_PERSO_LOCKED:I = 0x4

.field public static final SIM_STATE_PIN_REQUIRED:I = 0x2

.field public static final SIM_STATE_PUK_REQUIRED:I = 0x3

.field public static final SIM_STATE_READY:I = 0x5

.field public static final SIM_STATE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TelephonyManager"

.field public static final VOIPCALL_STATE_IDLE:I = 0x3

.field public static final VOIPCALL_STATE_OFFHOOK:I = 0x5

.field public static final VOIPCALL_STATE_RINGING:I = 0x4

.field protected static isMultiSimEnabled:Z

.field private static mPhoneCount:I

.field protected static sContext:Landroid/content/Context;

.field private static sInstance:Landroid/telephony/TelephonyManager;

.field protected static sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    const-string/jumbo v0, "persist.dsds.enabled"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/telephony/TelephonyManager;->isMultiSimEnabled:Z

    .line 78
    sput v3, Landroid/telephony/TelephonyManager;->mPhoneCount:I

    .line 112
    new-instance v0, Landroid/telephony/TelephonyManager;

    invoke-direct {v0}, Landroid/telephony/TelephonyManager;-><init>()V

    sput-object v0, Landroid/telephony/TelephonyManager;->sInstance:Landroid/telephony/TelephonyManager;

    .line 186
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone$State;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    .line 192
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone$State;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    .line 198
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone$State;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    .line 1708
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "010"

    aput-object v1, v0, v2

    const-string v1, "SKT"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "010"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "010"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "010"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "010"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "KTF"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "STI"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "HSP"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "LGT"

    aput-object v2, v0, v1

    sput-object v0, Landroid/telephony/TelephonyManager;->PREFIX_TABLE:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    sget-object v1, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 97
    .local v0, appContext:Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 98
    sput-object v0, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    .line 103
    :goto_0
    const-string/jumbo v1, "telephony.registry"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v1

    sput-object v1, Landroid/telephony/TelephonyManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 106
    .end local v0           #appContext:Landroid/content/Context;
    :cond_0
    return-void

    .line 100
    .restart local v0       #appContext:Landroid/content/Context;
    :cond_1
    sput-object p1, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "phoneIndex"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    .line 90
    return-void
.end method

.method public static from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 122
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public static getDefault()Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Landroid/telephony/TelephonyManager;->sInstance:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public static getDefaultSubscription()I
    .locals 2

    .prologue
    .line 480
    const-string/jumbo v0, "persist.default.subscription"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 1275
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method private getITelephonyExt()Lcom/android/internal/telephony/ITelephonyExt;
    .locals 1

    .prologue
    .line 1279
    const-string/jumbo v0, "phoneext"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkClass(I)I
    .locals 1
    .parameter "networkType"

    .prologue
    .line 580
    packed-switch p0, :pswitch_data_0

    .line 602
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 586
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 598
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 600
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 580
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 619
    packed-switch p0, :pswitch_data_0

    .line 655
    :pswitch_0
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 621
    :pswitch_1
    const-string v0, "GPRS"

    goto :goto_0

    .line 623
    :pswitch_2
    const-string v0, "EDGE"

    goto :goto_0

    .line 625
    :pswitch_3
    const-string v0, "UMTS"

    goto :goto_0

    .line 627
    :pswitch_4
    const-string v0, "HSDPA"

    goto :goto_0

    .line 629
    :pswitch_5
    const-string v0, "HSUPA"

    goto :goto_0

    .line 631
    :pswitch_6
    const-string v0, "HSPA"

    goto :goto_0

    .line 633
    :pswitch_7
    const-string v0, "CDMA"

    goto :goto_0

    .line 635
    :pswitch_8
    const-string v0, "CDMA - EvDo rev. 0"

    goto :goto_0

    .line 637
    :pswitch_9
    const-string v0, "CDMA - EvDo rev. A"

    goto :goto_0

    .line 639
    :pswitch_a
    const-string v0, "CDMA - EvDo rev. B"

    goto :goto_0

    .line 641
    :pswitch_b
    const-string v0, "CDMA - 1xRTT"

    goto :goto_0

    .line 643
    :pswitch_c
    const-string v0, "LTE"

    goto :goto_0

    .line 645
    :pswitch_d
    const-string v0, "CDMA - eHRPD"

    goto :goto_0

    .line 647
    :pswitch_e
    const-string v0, "iDEN"

    goto :goto_0

    .line 649
    :pswitch_f
    const-string v0, "HSPA+"

    goto :goto_0

    .line 651
    :pswitch_10
    const-string v0, "TD_SCDMA"

    goto :goto_0

    .line 653
    :pswitch_11
    const-string v0, "DC"

    goto :goto_0

    .line 619
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_e
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
    .end packed-switch
.end method

.method private getPhoneTypeFromNetworkType()I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 409
    const-string/jumbo v1, "ro.telephony.default_network"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 410
    .local v0, mode:I
    if-ne v0, v2, :cond_0

    .line 411
    const/4 v1, 0x0

    .line 412
    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneType(I)I

    move-result v1

    goto :goto_0
.end method

.method private getPhoneTypeFromProperty()I
    .locals 3

    .prologue
    .line 399
    const-string v1, "gsm.current.phone-type"

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromNetworkType()I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 402
    .local v0, type:I
    return v0
.end method

.method private static getRoamingUserAgent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "ua"
    .parameter "mdn"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 1713
    const/4 v0, -0x1

    .line 1714
    .local v0, nNum:I
    const-string/jumbo v1, "ril.currentplmn"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "oversea"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1723
    :goto_0
    return-object p0

    .line 1718
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 1719
    const-string v1, "I%c%c%s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1721
    :cond_1
    const-string v1, "I%c%c%s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getSecondary()Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Landroid/telephony/TelephonyManager;->sInstance:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private static getServiceUserAgent()C
    .locals 3

    .prologue
    .line 1738
    const/16 v0, 0x30

    .line 1740
    .local v0, cNetworkType:C
    invoke-static {}, Landroid/telephony/TelephonyManager;->isWIFIConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1741
    const/16 v0, 0x44

    .line 1773
    :goto_0
    return v0

    .line 1743
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    .line 1745
    .local v1, nNetworkType:I
    packed-switch v1, :pswitch_data_0

    .line 1770
    :pswitch_0
    const/16 v0, 0x36

    goto :goto_0

    .line 1748
    :pswitch_1
    const/16 v0, 0x42

    .line 1749
    goto :goto_0

    .line 1751
    :pswitch_2
    const/16 v0, 0x43

    .line 1752
    goto :goto_0

    .line 1754
    :pswitch_3
    const/16 v0, 0x38

    .line 1755
    goto :goto_0

    .line 1757
    :pswitch_4
    const/16 v0, 0x39

    .line 1758
    goto :goto_0

    .line 1764
    :pswitch_5
    const/16 v0, 0x36

    .line 1765
    goto :goto_0

    .line 1767
    :pswitch_6
    const/16 v0, 0x46

    .line 1768
    goto :goto_0

    .line 1745
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public static getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "property"
    .parameter "index"
    .parameter "defaultVal"

    .prologue
    .line 1552
    const/4 v1, 0x0

    .line 1553
    .local v1, propVal:Ljava/lang/String;
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1555
    .local v0, prop:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1556
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1557
    .local v2, values:[Ljava/lang/String;
    if-ltz p1, :cond_0

    array-length v3, v2

    if-ge p1, v3, :cond_0

    aget-object v3, v2, p1

    if-eqz v3, :cond_0

    .line 1558
    aget-object v1, v2, p1

    .line 1561
    .end local v2           #values:[Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    .end local p2
    :goto_0
    return-object p2

    .restart local p2
    :cond_1
    move-object p2, v1

    goto :goto_0
.end method

.method public static getUAField()Ljava/lang/String;
    .locals 31

    .prologue
    .line 1815
    const/16 v22, 0x0

    .line 1816
    .local v22, numPrefix:Ljava/lang/String;
    const-string v3, ""

    .line 1817
    .local v3, UserAgent:Ljava/lang/String;
    const-string v13, ""

    .line 1818
    .local v13, min8:Ljava/lang/String;
    const-string v12, ""

    .line 1819
    .local v12, mdn:Ljava/lang/String;
    const/16 v26, 0x0

    .line 1821
    .local v26, sbDeviceInfo:Ljava/lang/StringBuffer;
    const/4 v8, 0x0

    .line 1822
    .local v8, fileReader:Ljava/io/FileReader;
    const/16 v23, 0x0

    .line 1825
    .local v23, reader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v16, Ljava/io/File;

    const-string v28, "/system/skt/ua/uafield.dat"

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1826
    .local v16, myFile:Ljava/io/File;
    new-instance v9, Ljava/io/FileReader;

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1827
    .end local v8           #fileReader:Ljava/io/FileReader;
    .local v9, fileReader:Ljava/io/FileReader;
    :try_start_1
    new-instance v24, Ljava/io/BufferedReader;

    move-object/from16 v0, v24

    invoke-direct {v0, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 1828
    .end local v23           #reader:Ljava/io/BufferedReader;
    .local v24, reader:Ljava/io/BufferedReader;
    :try_start_2
    new-instance v27, Ljava/lang/StringBuffer;

    invoke-virtual/range {v24 .. v24}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 1829
    .end local v26           #sbDeviceInfo:Ljava/lang/StringBuffer;
    .local v27, sbDeviceInfo:Ljava/lang/StringBuffer;
    :try_start_3
    const-string v28, "TelephonyManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "ua -"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    invoke-virtual/range {v24 .. v24}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    .line 1835
    :try_start_4
    invoke-virtual/range {v24 .. v24}, Ljava/io/BufferedReader;->close()V

    .line 1836
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1840
    :goto_0
    if-nez v27, :cond_1

    .line 1841
    const/16 v28, 0x0

    move-object/from16 v23, v24

    .end local v24           #reader:Ljava/io/BufferedReader;
    .restart local v23       #reader:Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9           #fileReader:Ljava/io/FileReader;
    .restart local v8       #fileReader:Ljava/io/FileReader;
    move-object/from16 v26, v27

    .line 1904
    .end local v16           #myFile:Ljava/io/File;
    .end local v27           #sbDeviceInfo:Ljava/lang/StringBuffer;
    .restart local v26       #sbDeviceInfo:Ljava/lang/StringBuffer;
    :goto_1
    return-object v28

    .line 1837
    .end local v8           #fileReader:Ljava/io/FileReader;
    .end local v23           #reader:Ljava/io/BufferedReader;
    .end local v26           #sbDeviceInfo:Ljava/lang/StringBuffer;
    .restart local v9       #fileReader:Ljava/io/FileReader;
    .restart local v16       #myFile:Ljava/io/File;
    .restart local v24       #reader:Ljava/io/BufferedReader;
    .restart local v27       #sbDeviceInfo:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v7

    .line 1838
    .local v7, ex:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1831
    .end local v7           #ex:Ljava/lang/Exception;
    .end local v9           #fileReader:Ljava/io/FileReader;
    .end local v16           #myFile:Ljava/io/File;
    .end local v24           #reader:Ljava/io/BufferedReader;
    .end local v27           #sbDeviceInfo:Ljava/lang/StringBuffer;
    .restart local v8       #fileReader:Ljava/io/FileReader;
    .restart local v23       #reader:Ljava/io/BufferedReader;
    .restart local v26       #sbDeviceInfo:Ljava/lang/StringBuffer;
    :catch_1
    move-exception v6

    .line 1832
    .local v6, e:Ljava/lang/Exception;
    :goto_2
    :try_start_5
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1835
    :try_start_6
    invoke-virtual/range {v23 .. v23}, Ljava/io/BufferedReader;->close()V

    .line 1836
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 1840
    :goto_3
    if-nez v26, :cond_2

    .line 1841
    const/16 v28, 0x0

    goto :goto_1

    .line 1837
    :catch_2
    move-exception v7

    .line 1838
    .restart local v7       #ex:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 1834
    .end local v6           #e:Ljava/lang/Exception;
    .end local v7           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v28

    .line 1835
    :goto_4
    :try_start_7
    invoke-virtual/range {v23 .. v23}, Ljava/io/BufferedReader;->close()V

    .line 1836
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 1840
    :goto_5
    if-nez v26, :cond_0

    .line 1841
    const/16 v28, 0x0

    goto :goto_1

    .line 1837
    :catch_3
    move-exception v7

    .line 1838
    .restart local v7       #ex:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 1841
    .end local v7           #ex:Ljava/lang/Exception;
    :cond_0
    throw v28

    .end local v8           #fileReader:Ljava/io/FileReader;
    .end local v23           #reader:Ljava/io/BufferedReader;
    .end local v26           #sbDeviceInfo:Ljava/lang/StringBuffer;
    .restart local v9       #fileReader:Ljava/io/FileReader;
    .restart local v16       #myFile:Ljava/io/File;
    .restart local v24       #reader:Ljava/io/BufferedReader;
    .restart local v27       #sbDeviceInfo:Ljava/lang/StringBuffer;
    :cond_1
    move-object/from16 v23, v24

    .end local v24           #reader:Ljava/io/BufferedReader;
    .restart local v23       #reader:Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9           #fileReader:Ljava/io/FileReader;
    .restart local v8       #fileReader:Ljava/io/FileReader;
    move-object/from16 v26, v27

    .line 1844
    .end local v16           #myFile:Ljava/io/File;
    .end local v27           #sbDeviceInfo:Ljava/lang/StringBuffer;
    .restart local v26       #sbDeviceInfo:Ljava/lang/StringBuffer;
    :cond_2
    const-string/jumbo v28, "oversea"

    const-string/jumbo v29, "ril.currentplmn"

    invoke-static/range {v29 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 1845
    .local v10, is_roaming:Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getServiceUserAgent()C

    move-result v19

    .line 1847
    .local v19, networkType:C
    const/16 v28, 0x3

    move-object/from16 v0, v26

    move/from16 v1, v28

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 1849
    const-string v28, "gsm.operator.numeric"

    invoke-static/range {v28 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1850
    .local v18, networkOperator:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v4

    check-cast v4, Landroid/telephony/gsm/GsmCellLocation;

    .line 1851
    .local v4, cell:Landroid/telephony/gsm/GsmCellLocation;
    if-nez v4, :cond_3

    .line 1852
    const-string v28, "TelephonyManager"

    const-string v29, "No Sim or Flight mode"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1853
    const/16 v28, 0x0

    goto :goto_1

    .line 1856
    :cond_3
    :try_start_8
    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v5

    .line 1857
    .local v5, cid:I
    const v28, 0xff00

    and-int v28, v28, v5

    shr-int/lit8 v28, v28, 0x8

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v20, v0

    .line 1858
    .local v20, nodeB:B
    shr-int/lit8 v28, v5, 0x10

    and-int/lit8 v28, v28, 0x1f

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v25, v0

    .line 1859
    .local v25, rnc:B
    shr-int/lit8 v28, v5, 0x15

    and-int/lit8 v28, v28, 0x7f

    move/from16 v0, v28

    int-to-byte v15, v0

    .line 1861
    .local v15, msd:B
    if-nez v10, :cond_5

    .line 1862
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/TelephonyManager;->getSktImsiM()Ljava/lang/String;

    move-result-object v12

    .line 1868
    :goto_6
    sget-object v28, Landroid/telephony/TelephonyManager;->PREFIX_TABLE:[Ljava/lang/String;

    const/16 v29, 0x2

    move/from16 v0, v29

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v29

    add-int/lit8 v29, v29, -0x30

    aget-object v22, v28, v29

    .line 1870
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v28

    const/16 v29, 0xb

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_6

    .line 1871
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v28

    add-int/lit8 v28, v28, -0x8

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 1881
    :goto_7
    const/16 v28, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 1882
    .local v14, mnc:Ljava/lang/String;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "0"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1883
    .local v11, mcc:Ljava/lang/String;
    const/16 v17, 0x0

    .line 1885
    .local v17, networkInfo:Ljava/lang/String;
    const/16 v28, 0x46

    move/from16 v0, v19

    move/from16 v1, v28

    if-ne v0, v1, :cond_9

    .line 1886
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, ";ECI;"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ";"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1891
    :goto_8
    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1893
    if-eqz v22, :cond_4

    .line 1894
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v30

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1896
    :cond_4
    invoke-static {v3, v12}, Landroid/telephony/TelephonyManager;->getRoamingUserAgent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1897
    const-string v28, "TelephonyManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "getUAField():"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v28, v3

    .line 1904
    goto/16 :goto_1

    .line 1864
    .end local v11           #mcc:Ljava/lang/String;
    .end local v14           #mnc:Ljava/lang/String;
    .end local v17           #networkInfo:Ljava/lang/String;
    :cond_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/TelephonyManager;->getSktIrm()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_6

    .line 1872
    :cond_6
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v28

    const/16 v29, 0xa

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_8

    .line 1873
    if-nez v10, :cond_7

    .line 1874
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "0"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v29

    add-int/lit8 v29, v29, -0x7

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v30

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7

    .line 1876
    :cond_7
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v28

    add-int/lit8 v28, v28, -0x8

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7

    .line 1878
    :cond_8
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v28

    add-int/lit8 v28, v28, -0x8

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7

    .line 1888
    .restart local v11       #mcc:Ljava/lang/String;
    .restart local v14       #mnc:Ljava/lang/String;
    .restart local v17       #networkInfo:Ljava/lang/String;
    :cond_9
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v29, v20, 0xa

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    rem-int/lit8 v29, v20, 0xa

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1889
    .local v21, nodeBStr:Ljava/lang/String;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, ";"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ";"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ";"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ";"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ";"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    move-result-object v17

    goto/16 :goto_8

    .line 1898
    .end local v5           #cid:I
    .end local v11           #mcc:Ljava/lang/String;
    .end local v14           #mnc:Ljava/lang/String;
    .end local v15           #msd:B
    .end local v17           #networkInfo:Ljava/lang/String;
    .end local v20           #nodeB:B
    .end local v21           #nodeBStr:Ljava/lang/String;
    .end local v25           #rnc:B
    :catch_4
    move-exception v6

    .line 1899
    .restart local v6       #e:Ljava/lang/Exception;
    const-string v28, "TelephonyManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "No Sim or No MSISDN -"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 1901
    const/16 v28, 0x0

    goto/16 :goto_1

    .line 1834
    .end local v4           #cell:Landroid/telephony/gsm/GsmCellLocation;
    .end local v6           #e:Ljava/lang/Exception;
    .end local v8           #fileReader:Ljava/io/FileReader;
    .end local v10           #is_roaming:Z
    .end local v18           #networkOperator:Ljava/lang/String;
    .end local v19           #networkType:C
    .restart local v9       #fileReader:Ljava/io/FileReader;
    .restart local v16       #myFile:Ljava/io/File;
    :catchall_1
    move-exception v28

    move-object v8, v9

    .end local v9           #fileReader:Ljava/io/FileReader;
    .restart local v8       #fileReader:Ljava/io/FileReader;
    goto/16 :goto_4

    .end local v8           #fileReader:Ljava/io/FileReader;
    .end local v23           #reader:Ljava/io/BufferedReader;
    .restart local v9       #fileReader:Ljava/io/FileReader;
    .restart local v24       #reader:Ljava/io/BufferedReader;
    :catchall_2
    move-exception v28

    move-object/from16 v23, v24

    .end local v24           #reader:Ljava/io/BufferedReader;
    .restart local v23       #reader:Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9           #fileReader:Ljava/io/FileReader;
    .restart local v8       #fileReader:Ljava/io/FileReader;
    goto/16 :goto_4

    .end local v8           #fileReader:Ljava/io/FileReader;
    .end local v23           #reader:Ljava/io/BufferedReader;
    .end local v26           #sbDeviceInfo:Ljava/lang/StringBuffer;
    .restart local v9       #fileReader:Ljava/io/FileReader;
    .restart local v24       #reader:Ljava/io/BufferedReader;
    .restart local v27       #sbDeviceInfo:Ljava/lang/StringBuffer;
    :catchall_3
    move-exception v28

    move-object/from16 v23, v24

    .end local v24           #reader:Ljava/io/BufferedReader;
    .restart local v23       #reader:Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9           #fileReader:Ljava/io/FileReader;
    .restart local v8       #fileReader:Ljava/io/FileReader;
    move-object/from16 v26, v27

    .end local v27           #sbDeviceInfo:Ljava/lang/StringBuffer;
    .restart local v26       #sbDeviceInfo:Ljava/lang/StringBuffer;
    goto/16 :goto_4

    .line 1831
    .end local v8           #fileReader:Ljava/io/FileReader;
    .restart local v9       #fileReader:Ljava/io/FileReader;
    :catch_5
    move-exception v6

    move-object v8, v9

    .end local v9           #fileReader:Ljava/io/FileReader;
    .restart local v8       #fileReader:Ljava/io/FileReader;
    goto/16 :goto_2

    .end local v8           #fileReader:Ljava/io/FileReader;
    .end local v23           #reader:Ljava/io/BufferedReader;
    .restart local v9       #fileReader:Ljava/io/FileReader;
    .restart local v24       #reader:Ljava/io/BufferedReader;
    :catch_6
    move-exception v6

    move-object/from16 v23, v24

    .end local v24           #reader:Ljava/io/BufferedReader;
    .restart local v23       #reader:Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9           #fileReader:Ljava/io/FileReader;
    .restart local v8       #fileReader:Ljava/io/FileReader;
    goto/16 :goto_2

    .end local v8           #fileReader:Ljava/io/FileReader;
    .end local v23           #reader:Ljava/io/BufferedReader;
    .end local v26           #sbDeviceInfo:Ljava/lang/StringBuffer;
    .restart local v9       #fileReader:Ljava/io/FileReader;
    .restart local v24       #reader:Ljava/io/BufferedReader;
    .restart local v27       #sbDeviceInfo:Ljava/lang/StringBuffer;
    :catch_7
    move-exception v6

    move-object/from16 v23, v24

    .end local v24           #reader:Ljava/io/BufferedReader;
    .restart local v23       #reader:Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9           #fileReader:Ljava/io/FileReader;
    .restart local v8       #fileReader:Ljava/io/FileReader;
    move-object/from16 v26, v27

    .end local v27           #sbDeviceInfo:Ljava/lang/StringBuffer;
    .restart local v26       #sbDeviceInfo:Ljava/lang/StringBuffer;
    goto/16 :goto_2
.end method

.method public static isMultiSimEnabled()Z
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method private static isWIFIConnected()Z
    .locals 2

    .prologue
    .line 1727
    const-string v1, "gsm.wifiConnected.active"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1729
    .local v0, wifiConnected:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1730
    const/4 v1, 0x1

    .line 1732
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V
    .locals 9
    .parameter "property"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1379
    const-string v4, ""

    .line 1380
    .local v4, propVal:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1381
    .local v2, p:[Ljava/lang/String;
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1383
    .local v3, prop:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1384
    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1387
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_2

    .line 1388
    const-string v5, ""

    .line 1389
    .local v5, str:Ljava/lang/String;
    if-eqz v2, :cond_1

    array-length v6, v2

    if-ge v1, v6, :cond_1

    .line 1390
    aget-object v5, v2, v1

    .line 1392
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1387
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1395
    .end local v5           #str:Ljava/lang/String;
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1396
    if-eqz v2, :cond_3

    .line 1397
    add-int/lit8 v1, p1, 0x1

    :goto_1
    array-length v6, v2

    if-ge v1, v6, :cond_3

    .line 1398
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v2, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1397
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1406
    :cond_3
    :try_start_0
    invoke-static {p0, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1413
    :goto_2
    return-void

    .line 1407
    :catch_0
    move-exception v0

    .line 1408
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v6, "TelephonyManager"

    const-string v7, "Propval length is greaterthan 91"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1409
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 1410
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "TelephonyManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SystemProperties.set failed -"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public calculateAkaResponse([B[B)Ljava/lang/String;
    .locals 3
    .parameter "rand"
    .parameter "autn"

    .prologue
    const/4 v1, 0x0

    .line 1599
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->calculateAkaResponse([B[B)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1603
    :goto_0
    return-object v1

    .line 1600
    :catch_0
    move-exception v0

    .line 1601
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1602
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1603
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public calculateGbaBootstrappingResponse([B[B)Landroid/telephony/TelephonyManager$GbaBootstrappingResponse;
    .locals 4
    .parameter "rand"
    .parameter "autn"

    .prologue
    const/4 v3, 0x0

    .line 1683
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->calculateGbaBootstrappingResponse([B[B)Landroid/os/Bundle;

    move-result-object v0

    .line 1684
    .local v0, bundle:Landroid/os/Bundle;
    new-instance v2, Landroid/telephony/TelephonyManager$GbaBootstrappingResponse;

    invoke-direct {v2, p0, v0}, Landroid/telephony/TelephonyManager$GbaBootstrappingResponse;-><init>(Landroid/telephony/TelephonyManager;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1688
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-object v2

    .line 1685
    :catch_0
    move-exception v1

    .local v1, ex:Landroid/os/RemoteException;
    move-object v2, v3

    .line 1686
    goto :goto_0

    .line 1687
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, ex:Ljava/lang/NullPointerException;
    move-object v2, v3

    .line 1688
    goto :goto_0
.end method

.method public calculateNafExternalKey([B)[B
    .locals 3
    .parameter "nafId"

    .prologue
    const/4 v1, 0x0

    .line 1696
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->calculateNafExternalKey([B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1700
    :goto_0
    return-object v1

    .line 1697
    :catch_0
    move-exception v0

    .line 1698
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1699
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1700
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public disableLocationUpdates()V
    .locals 1

    .prologue
    .line 313
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->disableLocationUpdates()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :goto_0
    return-void

    .line 315
    :catch_0
    move-exception v0

    goto :goto_0

    .line 314
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public enableLocationUpdates()V
    .locals 1

    .prologue
    .line 296
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->enableLocationUpdates()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :goto_0
    return-void

    .line 298
    :catch_0
    move-exception v0

    goto :goto_0

    .line 297
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public getAllCellInfo()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1543
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getAllCellInfo()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1547
    :goto_0
    return-object v1

    .line 1544
    :catch_0
    move-exception v0

    .line 1545
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1546
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1547
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getBtid()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1640
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getBtid()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1644
    :goto_0
    return-object v1

    .line 1641
    :catch_0
    move-exception v0

    .line 1642
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1643
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1644
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCallState()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1193
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCallState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1199
    :goto_0
    return v1

    .line 1194
    :catch_0
    move-exception v0

    .line 1196
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1197
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1199
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCdmaEriIconIndex()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 1330
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconIndex()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1335
    :goto_0
    return v1

    .line 1331
    :catch_0
    move-exception v0

    .line 1333
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1334
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1335
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCdmaEriIconMode()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 1348
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1353
    :goto_0
    return v1

    .line 1349
    :catch_0
    move-exception v0

    .line 1351
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1352
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1353
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1364
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriText()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1369
    :goto_0
    return-object v1

    .line 1365
    :catch_0
    move-exception v0

    .line 1367
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1368
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1369
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 273
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->getCellLocation()Landroid/os/Bundle;

    move-result-object v0

    .line 274
    .local v0, bundle:Landroid/os/Bundle;
    invoke-static {v0}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;

    move-result-object v1

    .line 275
    .local v1, cl:Landroid/telephony/CellLocation;
    invoke-virtual {v1}, Landroid/telephony/CellLocation;->isEmpty()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v3

    .line 281
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #cl:Landroid/telephony/CellLocation;
    :cond_0
    :goto_0
    return-object v1

    .line 278
    :catch_0
    move-exception v2

    .local v2, ex:Landroid/os/RemoteException;
    move-object v1, v3

    .line 279
    goto :goto_0

    .line 280
    .end local v2           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .local v2, ex:Ljava/lang/NullPointerException;
    move-object v1, v3

    .line 281
    goto :goto_0
.end method

.method public getCompleteVoiceMailNumber()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1046
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getCompleteVoiceMailNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1051
    :goto_0
    return-object v1

    .line 1047
    :catch_0
    move-exception v0

    .line 1048
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1049
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1051
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCurrentPhoneType()I
    .locals 3

    .prologue
    .line 361
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 362
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 363
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I

    move-result v2

    .line 378
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .line 366
    .restart local v1       #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    goto :goto_0

    .line 368
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 371
    .local v0, ex:Landroid/os/RemoteException;
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_0

    .line 372
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 375
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_0

    .line 376
    .end local v0           #ex:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 378
    .local v0, ex:Ljava/lang/SecurityException;
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_0
.end method

.method public getDataActivity()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1229
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getDataActivity()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1235
    :goto_0
    return v1

    .line 1230
    :catch_0
    move-exception v0

    .line 1232
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1233
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1235
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDataRoamingEnabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1486
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getDataRoamingEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1490
    :goto_0
    return v1

    .line 1487
    :catch_0
    move-exception v0

    .line 1488
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1489
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1490
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDataServiceState()I
    .locals 2

    .prologue
    .line 1522
    const/4 v0, 0x0

    .line 1524
    .local v0, state:I
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getDataServiceState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1528
    :goto_0
    return v0

    .line 1526
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1525
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public getDataState()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1265
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getDataState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1270
    :goto_0
    return v1

    .line 1266
    :catch_0
    move-exception v0

    .line 1268
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1269
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1270
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 255
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 259
    :goto_0
    return-object v1

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 258
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 259
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDeviceSoftwareVersion()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 232
    const-string v2, "SPR"

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 234
    const-string v1, "gsm.version.baseband"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 242
    :goto_0
    return-object v1

    .line 238
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceSvn()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 241
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 242
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getImeiInCDMAGSMPhone()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2126
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getImeiInCDMAGSMPhone()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2130
    :goto_0
    return-object v1

    .line 2127
    :catch_0
    move-exception v0

    .line 2128
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2129
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2130
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getIsimAid()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1661
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimAid()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1665
    :goto_0
    return-object v1

    .line 1662
    :catch_0
    move-exception v0

    .line 1663
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1664
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1665
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getIsimDomain()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1114
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimDomain()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1119
    :goto_0
    return-object v1

    .line 1115
    :catch_0
    move-exception v0

    .line 1116
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1117
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1119
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getIsimImpi()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1098
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpi()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1103
    :goto_0
    return-object v1

    .line 1099
    :catch_0
    move-exception v0

    .line 1100
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1101
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1103
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getIsimImpu()[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1131
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpu()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1136
    :goto_0
    return-object v1

    .line 1132
    :catch_0
    move-exception v0

    .line 1133
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1134
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1136
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getIsimPcscf()[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1149
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimPcscf()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1154
    :goto_0
    return-object v1

    .line 1150
    :catch_0
    move-exception v0

    .line 1151
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1152
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1154
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getKeyLifetime()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1651
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getKeyLifetime()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1655
    :goto_0
    return-object v1

    .line 1652
    :catch_0
    move-exception v0

    .line 1653
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1654
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1655
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLGUplusKnightInfo()Ljava/util/HashMap;
    .locals 7

    .prologue
    .line 2027
    const/4 v2, 0x0

    .line 2028
    .local v2, mLGUplusKnightInfo:Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2030
    .local v3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephonyExt()Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephonyExt;->getMobileQualityInformation()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2037
    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2038
    .local v0, Values:[Ljava/lang/String;
    const-string v4, "getLGUplusKnightInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "length : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    const-string v4, "IMSI"

    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2041
    const-string v4, "GUTI"

    const/4 v5, 0x1

    aget-object v5, v0, v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2042
    const-string v4, "IP"

    const/4 v5, 0x2

    aget-object v5, v0, v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2043
    const-string v4, "Antenna Bar"

    const/4 v5, 0x3

    aget-object v5, v0, v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2044
    const-string v4, "NV Mode"

    const/4 v5, 0x4

    aget-object v5, v0, v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2045
    const-string v4, "Service State"

    const/4 v5, 0x5

    aget-object v5, v0, v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2046
    const-string v4, "LAC"

    const/4 v5, 0x6

    aget-object v5, v0, v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2047
    const-string v4, "TAC"

    const/4 v5, 0x7

    aget-object v5, v0, v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2048
    const-string v4, "Band"

    const/16 v5, 0x8

    aget-object v5, v0, v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2049
    const-string v4, "Bandwidth"

    const/16 v5, 0x9

    aget-object v5, v0, v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2050
    const-string v4, "PCI"

    const/16 v5, 0xa

    aget-object v5, v0, v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2051
    const-string v4, "TX"

    const/16 v5, 0xb

    aget-object v5, v0, v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2052
    const-string v4, "RSSI"

    const/16 v5, 0xc

    aget-object v5, v0, v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2053
    const-string v4, "RSRP"

    const/16 v5, 0xd

    aget-object v5, v0, v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2054
    const-string v4, "RSRQ"

    const/16 v5, 0xe

    aget-object v5, v0, v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2055
    const-string v4, "SINR"

    const/16 v5, 0xf

    aget-object v5, v0, v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2056
    const-string v4, "EARFCN downlink"

    const/16 v5, 0x10

    aget-object v5, v0, v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2057
    const-string v4, "EARFCN uplink"

    const/16 v5, 0x11

    aget-object v5, v0, v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2058
    const-string v4, "EMM cause"

    const/16 v5, 0x12

    aget-object v5, v0, v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2059
    const-string v4, "EMM state"

    const/16 v5, 0x13

    aget-object v5, v0, v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2060
    const-string v4, "EMM connection state"

    const/16 v5, 0x14

    aget-object v5, v0, v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2061
    const-string v4, "Default Bearer count"

    const/16 v5, 0x15

    aget-object v5, v0, v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2062
    const-string v4, "Dedicated Bearer count"

    const/16 v5, 0x16

    aget-object v5, v0, v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2112
    .end local v0           #Values:[Ljava/lang/String;
    .end local v3           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object v3

    .line 2031
    .restart local v3       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 2032
    .local v1, ex:Ljava/lang/Exception;
    const-string v4, "TelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMobileQualityInformation() - Exception occured : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 990
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1AlphaTag()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 995
    :goto_0
    return-object v1

    .line 991
    :catch_0
    move-exception v0

    .line 992
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 993
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 995
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 970
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1Number()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 975
    :goto_0
    return-object v1

    .line 971
    :catch_0
    move-exception v0

    .line 972
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 973
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 975
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLteOnCdmaMode()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 927
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getLteOnCdmaMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 933
    :goto_0
    return v1

    .line 928
    :catch_0
    move-exception v0

    .line 930
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 931
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 933
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getMobileQualityInformation()Ljava/util/HashMap;
    .locals 11

    .prologue
    const/4 v10, 0x7

    const/4 v9, 0x5

    const/16 v8, 0xd

    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 1911
    const/4 v2, 0x0

    .line 1912
    .local v2, mMobileInfo:Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1914
    .local v3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephonyExt()Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephonyExt;->getMobileQualityInformation()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1920
    const-string v5, ";"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1921
    .local v0, Values:[Ljava/lang/String;
    array-length v5, v0

    const/16 v6, 0x11

    if-ge v5, v6, :cond_1

    move-object v3, v4

    .line 2008
    .end local v0           #Values:[Ljava/lang/String;
    .end local v3           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    :goto_0
    return-object v3

    .line 1915
    .restart local v3       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_0
    move-exception v1

    .line 1916
    .local v1, ex:Ljava/lang/Exception;
    const-string v5, "TelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getMobileQualityInformation() - Exception occured : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 1917
    goto :goto_0

    .line 1923
    .end local v1           #ex:Ljava/lang/Exception;
    .restart local v0       #Values:[Ljava/lang/String;
    :cond_1
    aget-object v5, v0, v7

    const-string v6, "WCDMA"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1925
    const-string/jumbo v5, "network_mode"

    aget-object v6, v0, v7

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1926
    const-string v5, "mcc"

    const/4 v6, 0x1

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1927
    const-string v5, "mnc"

    const/4 v6, 0x2

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1928
    const-string v5, "downlink_channel"

    const/4 v6, 0x3

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1929
    const-string/jumbo v5, "uplink_channel"

    const/4 v6, 0x4

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1930
    const-string v5, "KTT"

    const-string/jumbo v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1931
    const-string v5, "cell_id"

    aget-object v6, v0, v9

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1934
    :goto_1
    const-string/jumbo v5, "rssi"

    const/4 v6, 0x6

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1935
    aget-object v5, v0, v10

    const-string v6, "--"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1937
    const-string/jumbo v5, "tx_power"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1941
    :goto_2
    const-string/jumbo v5, "ul_interference"

    const/16 v6, 0x8

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1942
    const-string v5, "activeset_psc"

    const/16 v6, 0x9

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1943
    const-string v5, "activeset_rscp"

    const/16 v6, 0xa

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1944
    const-string v5, "activeset_ecio"

    const/16 v6, 0xb

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1945
    const/16 v5, 0xc

    aget-object v5, v0, v5

    const-string v6, "--"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1947
    const-string/jumbo v5, "neighborset_psc"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1951
    :goto_3
    aget-object v5, v0, v8

    const-string v6, "--"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1953
    const-string/jumbo v5, "neighborset_rscp"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1959
    :goto_4
    const/16 v5, 0xe

    aget-object v5, v0, v5

    const-string v6, "--"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1961
    const-string/jumbo v5, "neighborset_ecio"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1967
    :goto_5
    const-string v5, "cqi"

    const/16 v6, 0xf

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1968
    const/16 v5, 0x10

    aget-object v5, v0, v5

    const-string v6, "--"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1970
    const-string v5, "bler"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2006
    :goto_6
    array-length v4, v0

    const/16 v5, 0x12

    if-lt v4, v5, :cond_0

    .line 2007
    const-string v4, "etc"

    const/16 v5, 0x11

    aget-object v5, v0, v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1933
    :cond_2
    const-string v5, "cell_id"

    aget-object v6, v0, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1939
    :cond_3
    const-string/jumbo v5, "tx_power"

    aget-object v6, v0, v10

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1949
    :cond_4
    const-string/jumbo v5, "neighborset_psc"

    const/16 v6, 0xc

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 1957
    :cond_5
    const-string/jumbo v5, "neighborset_rscp"

    aget-object v6, v0, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 1965
    :cond_6
    const-string/jumbo v5, "neighborset_ecio"

    const/16 v6, 0xe

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 1974
    :cond_7
    const-string v4, "bler"

    const/16 v5, 0x10

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 1977
    :cond_8
    const-string/jumbo v5, "network_mode"

    aget-object v6, v0, v7

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1978
    const-string v5, "mcc"

    const/4 v6, 0x1

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1979
    const-string v5, "mnc"

    const/4 v6, 0x2

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1980
    const-string/jumbo v5, "tac"

    const/4 v6, 0x3

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1981
    const-string v5, "earfcn_downlink"

    const/4 v6, 0x4

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1982
    const-string v5, "earfcn_uplink"

    aget-object v6, v0, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1983
    const-string v5, "band"

    const/4 v6, 0x6

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1984
    const-string v5, "bandwidth"

    aget-object v6, v0, v10

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1985
    const-string v5, "KTT"

    const-string/jumbo v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1986
    const-string v5, "cell_id"

    const/16 v6, 0x8

    aget-object v6, v0, v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1989
    :goto_7
    const-string/jumbo v5, "pci"

    const/16 v6, 0x9

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1990
    const-string/jumbo v5, "rssi"

    const/16 v6, 0xa

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1991
    const-string/jumbo v5, "rsrp"

    const/16 v6, 0xb

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1992
    const-string/jumbo v5, "rsrq"

    const/16 v6, 0xc

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1993
    aget-object v5, v0, v8

    const-string v6, "--"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1995
    const-string/jumbo v5, "tx_power"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2001
    :goto_8
    const-string/jumbo v4, "sinr"

    const/16 v5, 0xe

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2002
    const-string/jumbo v4, "rrc"

    const/16 v5, 0xf

    aget-object v5, v0, v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2003
    const-string v4, "ip"

    const/16 v5, 0x10

    aget-object v5, v0, v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2004
    const-string v4, "cqi"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 1988
    :cond_9
    const-string v5, "cell_id"

    const/16 v6, 0x8

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 1999
    :cond_a
    const-string/jumbo v4, "tx_power"

    aget-object v5, v0, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1010
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getMsisdn()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1015
    :goto_0
    return-object v1

    .line 1011
    :catch_0
    move-exception v0

    .line 1012
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1013
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1015
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getNeighboringCellInfo()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 329
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getNeighboringCellInfo()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 333
    :goto_0
    return-object v1

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 332
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 333
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getNetworkCountryIso()Ljava/lang/String;
    .locals 3

    .prologue
    .line 470
    const-string v0, "gsm.operator.iso-country"

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 448
    const-string v0, "gsm.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorName()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 428
    const-string v1, "SPR"

    const-string v2, "ATT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 430
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 431
    const-string/jumbo v1, "ro.cdma.home.operator.alpha"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 432
    .local v0, homeOperatorAlpha:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v3, :cond_0

    .line 437
    .end local v0           #homeOperatorAlpha:Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    const-string v1, "gsm.operator.alpha"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNetworkType()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 545
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 546
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 547
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getNetworkType()I

    move-result v2

    .line 560
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .line 550
    .restart local v1       #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    const-string v3, "TelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNetworkType() - telephony :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 553
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 555
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "TelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNetworkType() - RemoteException :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 557
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 559
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v3, "TelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNetworkType() - NullPointerException :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getNetworkTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 614
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 392
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 393
    const/4 v0, 0x0

    .line 395
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    goto :goto_0
.end method

.method public getRand()[B
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1629
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getRand()[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1633
    :goto_0
    return-object v1

    .line 1630
    :catch_0
    move-exception v0

    .line 1631
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1632
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1633
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getServiceState()I
    .locals 2

    .prologue
    .line 1509
    const/4 v0, 0x0

    .line 1511
    .local v0, state:I
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getServiceState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1515
    :goto_0
    return v0

    .line 1513
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1512
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public getSimCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 894
    const-string v0, "gsm.sim.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperator()Ljava/lang/String;
    .locals 3

    .prologue
    .line 865
    const-string v1, "LGT"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 866
    const-string/jumbo v1, "ril.simtype"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 867
    .local v0, simType:Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "18"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 868
    :cond_0
    const-string v1, "45006"

    .line 870
    .end local v0           #simType:Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_1
    const-string v1, "gsm.sim.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSimOperatorName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 882
    const-string v0, "VZW"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 884
    const-string v0, "Verizon"

    .line 887
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "gsm.sim.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimSerialNumber()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 906
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSerialNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 911
    :goto_0
    return-object v1

    .line 907
    :catch_0
    move-exception v0

    .line 908
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 909
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 911
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getSimState()I
    .locals 3

    .prologue
    const/4 v1, 0x6

    .line 766
    const-string v2, "gsm.sim.state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 767
    .local v0, prop:Ljava/lang/String;
    const-string v2, "ABSENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 768
    const/4 v1, 0x1

    .line 789
    :cond_0
    :goto_0
    return v1

    .line 770
    :cond_1
    const-string v2, "CARD_IO_ERROR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 773
    const-string v2, "PIN_REQUIRED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 774
    const/4 v1, 0x2

    goto :goto_0

    .line 776
    :cond_2
    const-string v2, "PUK_REQUIRED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 777
    const/4 v1, 0x3

    goto :goto_0

    .line 779
    :cond_3
    const-string v2, "PERSO_LOCKED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 780
    const/4 v1, 0x4

    goto :goto_0

    .line 782
    :cond_4
    const-string v2, "READY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 783
    const/4 v1, 0x5

    goto :goto_0

    .line 785
    :cond_5
    const-string v2, "CARD_IO_ERROR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 789
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSimState(I)I
    .locals 3
    .parameter "slotId"

    .prologue
    .line 817
    const-string v1, "gsm.sim.state"

    const-string v2, ""

    invoke-static {v1, p1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 819
    .local v0, prop:Ljava/lang/String;
    const-string v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 820
    const/4 v1, 0x1

    .line 852
    :goto_0
    return v1

    .line 821
    :cond_0
    const-string v1, "PIN_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 822
    const/4 v1, 0x2

    goto :goto_0

    .line 823
    :cond_1
    const-string v1, "PUK_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 824
    const/4 v1, 0x3

    goto :goto_0

    .line 825
    :cond_2
    const-string v1, "PERSO_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 826
    const/4 v1, 0x4

    goto :goto_0

    .line 827
    :cond_3
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 828
    const/4 v1, 0x5

    goto :goto_0

    .line 829
    :cond_4
    const-string v1, "CARD_IO_ERROR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 830
    const/4 v1, 0x6

    goto :goto_0

    .line 831
    :cond_5
    const-string v1, "SIM_NETWORK_SUBSET_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 832
    const/4 v1, 0x7

    goto :goto_0

    .line 833
    :cond_6
    const-string v1, "SIM_CORPORATE_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 834
    const/16 v1, 0x8

    goto :goto_0

    .line 835
    :cond_7
    const-string v1, "SIM_SERVICE_PROVIDER_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 836
    const/16 v1, 0x9

    goto :goto_0

    .line 837
    :cond_8
    const-string v1, "SIM_SIM_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 838
    const/16 v1, 0xa

    goto :goto_0

    .line 839
    :cond_9
    const-string v1, "RUIM_NETWORK1_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 840
    const/16 v1, 0xb

    goto :goto_0

    .line 841
    :cond_a
    const-string v1, "RUIM_NETWORK2_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 842
    const/16 v1, 0xc

    goto :goto_0

    .line 843
    :cond_b
    const-string v1, "RUIM_HRPD_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 844
    const/16 v1, 0xd

    goto :goto_0

    .line 845
    :cond_c
    const-string v1, "RUIM_CORPORATE_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 846
    const/16 v1, 0xe

    goto/16 :goto_0

    .line 847
    :cond_d
    const-string v1, "RUIM_SERVICE_PROVIDER_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 848
    const/16 v1, 0xf

    goto/16 :goto_0

    .line 849
    :cond_e
    const-string v1, "RUIM_RUIM_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 850
    const/16 v1, 0x10

    goto/16 :goto_0

    .line 852
    :cond_f
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public getSktImsiM()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1786
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSktImsiM()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1791
    :goto_0
    return-object v1

    .line 1787
    :catch_0
    move-exception v0

    .line 1788
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1789
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1791
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getSktIrm()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1804
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSktIrm()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1809
    :goto_0
    return-object v1

    .line 1805
    :catch_0
    move-exception v0

    .line 1806
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1807
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1809
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getSponImsi()[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2015
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSponImsi()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2020
    :goto_0
    return-object v1

    .line 2016
    :catch_0
    move-exception v0

    .line 2017
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2018
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2020
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 952
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 957
    :goto_0
    return-object v1

    .line 953
    :catch_0
    move-exception v0

    .line 954
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 955
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 957
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method protected getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;
    .locals 1

    .prologue
    .line 1164
    const-string v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1082
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailAlphaTag()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1087
    :goto_0
    return-object v1

    .line 1083
    :catch_0
    move-exception v0

    .line 1084
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1085
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1087
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1027
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1032
    :goto_0
    return-object v1

    .line 1028
    :catch_0
    move-exception v0

    .line 1029
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1030
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1032
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMessageCount()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1064
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getVoiceMessageCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1069
    :goto_0
    return v1

    .line 1065
    :catch_0
    move-exception v0

    .line 1066
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1067
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1069
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public hasIccCard()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 731
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->hasIccCard()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 739
    :goto_0
    return v1

    .line 732
    :catch_0
    move-exception v0

    .line 734
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasIccCard() - RemoteException :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 736
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 738
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "TelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasIccCard() - NullPointerException :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public hasIsim()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1574
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->hasIsim()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1578
    :goto_0
    return v1

    .line 1575
    :catch_0
    move-exception v0

    .line 1576
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1577
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1578
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isGbaSupported()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1618
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->isGbaSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1622
    :goto_0
    return v1

    .line 1619
    :catch_0
    move-exception v0

    .line 1620
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1621
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1622
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isNetworkRoaming()Z
    .locals 2

    .prologue
    .line 458
    const-string/jumbo v0, "true"

    const-string v1, "gsm.operator.isroaming"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSmsCapable()Z
    .locals 2

    .prologue
    .line 1475
    sget-object v0, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1476
    :goto_0
    return v0

    :cond_0
    sget-object v0, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isVoiceCapable()Z
    .locals 2

    .prologue
    .line 1432
    sget-object v0, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1433
    :goto_0
    return v0

    :cond_0
    sget-object v0, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_0
.end method

.method public listen(Landroid/telephony/PhoneStateListener;I)V
    .locals 5
    .parameter "listener"
    .parameter "events"

    .prologue
    .line 1312
    sget-object v2, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    sget-object v2, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1314
    .local v1, pkgForDebug:Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1315
    .local v0, notifyNow:Ljava/lang/Boolean;
    sget-object v2, Landroid/telephony/TelephonyManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v3, p1, Landroid/telephony/PhoneStateListener;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v2, v1, v3, p2, v4}, Lcom/android/internal/telephony/ITelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1321
    .end local v0           #notifyNow:Ljava/lang/Boolean;
    :goto_2
    return-void

    .line 1312
    .end local v1           #pkgForDebug:Ljava/lang/String;
    :cond_0
    const-string v1, "<unknown>"

    goto :goto_0

    .line 1314
    .restart local v1       #pkgForDebug:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 1318
    :catch_0
    move-exception v2

    goto :goto_2

    .line 1316
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method public requestAuthForMediaShare(Ljava/lang/String;)V
    .locals 4
    .parameter "data"

    .prologue
    .line 1452
    const-string v1, "ISIM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISIM >>> Inside TelephonyManager->requestAuthForMediaShare data as string "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->requestAuthForMediaShare(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1461
    :goto_0
    return-void

    .line 1457
    :catch_0
    move-exception v0

    .line 1459
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestIsimAuthentication(Ljava/lang/String;)V
    .locals 4
    .parameter "data"

    .prologue
    .line 1439
    const-string v1, "ISIM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISIM >>> Inside TelephonyManager->requestIsimAuthentication data as string "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->requestIsimAuthentication(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1448
    :goto_0
    return-void

    .line 1444
    :catch_0
    move-exception v0

    .line 1446
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 1499
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->setDataRoamingEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1503
    :goto_0
    return-void

    .line 1501
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1500
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "rand"
    .parameter "btid"
    .parameter "keyLifetime"

    .prologue
    .line 1672
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1678
    :goto_0
    return-void

    .line 1675
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1673
    :catch_1
    move-exception v0

    goto :goto_0
.end method
