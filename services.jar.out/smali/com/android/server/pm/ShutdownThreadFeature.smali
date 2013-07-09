.class public Lcom/android/server/pm/ShutdownThreadFeature;
.super Ljava/lang/Thread;
.source "ShutdownThreadFeature.java"


# static fields
.field protected static LedOffValue:I = 0x0

.field protected static LedOnValue:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static WiFiOff:Z = false

.field private static bluetoothOff:Z = false

.field private static final graceMagicNo:Ljava/lang/String; = "0x14151821"

.field private static nfcOff:Z

.field private static radioOff:Z


# instance fields
.field final bluetooth:Landroid/bluetooth/IBluetooth;

.field mContext:Landroid/content/Context;

.field final nfc:Landroid/nfc/INfcAdapter;

.field final phone:Lcom/android/internal/telephony/ITelephony;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    const/4 v0, 0x0

    .line 44
    sput v1, Lcom/android/server/pm/ShutdownThreadFeature;->LedOnValue:I

    .line 45
    sput v1, Lcom/android/server/pm/ShutdownThreadFeature;->LedOffValue:I

    .line 47
    sput-boolean v0, Lcom/android/server/pm/ShutdownThreadFeature;->nfcOff:Z

    .line 48
    sput-boolean v0, Lcom/android/server/pm/ShutdownThreadFeature;->bluetoothOff:Z

    .line 49
    sput-boolean v0, Lcom/android/server/pm/ShutdownThreadFeature;->radioOff:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "TAG"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 60
    const-string v0, "nfc"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/ShutdownThreadFeature;->nfc:Landroid/nfc/INfcAdapter;

    .line 61
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/ShutdownThreadFeature;->phone:Lcom/android/internal/telephony/ITelephony;

    .line 62
    const-string v0, "bluetooth"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/ShutdownThreadFeature;->bluetooth:Landroid/bluetooth/IBluetooth;

    .line 65
    return-void
.end method

.method public static SituationVolume(Landroid/media/AudioManager;Landroid/media/MediaPlayer;)V
    .locals 3
    .parameter "audioManager"
    .parameter "mp"

    .prologue
    .line 68
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    const-string v1, "ShutdownThread"

    const-string v2, "set situation volume"

    invoke-static {v1, v2}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const-string v1, "situation=8;device=0"

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 73
    .local v0, situationVol:F
    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/android/server/pm/ShutdownThreadFeature;->bluetoothOff:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    sput-boolean p0, Lcom/android/server/pm/ShutdownThreadFeature;->bluetoothOff:Z

    return p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/android/server/pm/ShutdownThreadFeature;->radioOff:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    sput-boolean p0, Lcom/android/server/pm/ShutdownThreadFeature;->radioOff:Z

    return p0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/android/server/pm/ShutdownThreadFeature;->nfcOff:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    sput-boolean p0, Lcom/android/server/pm/ShutdownThreadFeature;->nfcOff:Z

    return p0
.end method

.method private shutdownReason()V
    .locals 4

    .prologue
    .line 79
    const-string v2, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 99
    :goto_0
    return-void

    .line 83
    :cond_0
    :try_start_0
    const-string v2, "ShutdownThread"

    const-string v3, "Writing graceful shutdown magic no."

    invoke-static {v2, v3}, Lcom/android/server/pm/ShutdownThread$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const-string v2, "0x14151821"

    invoke-static {v2}, Lcom/android/server/pm/ShutdownReason;->writeSMagicNo(Ljava/lang/String;)V

    .line 86
    const-string v2, "ShutdownThread"

    const-string v3, "Writing shutdown reason"

    invoke-static {v2, v3}, Lcom/android/server/pm/ShutdownThread$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const-string v2, "persist.sys.shutdown"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, reasonProp:Ljava/lang/String;
    const-string v2, "Default"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    const-string v2, "ShutdownThread"

    const-string v3, "Writing unknown graceful shutdown reason"

    invoke-static {v2, v3}, Lcom/android/server/pm/ShutdownThread$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string v2, "UPSR@"

    invoke-static {v2}, Lcom/android/server/pm/ShutdownReason;->writeReason(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    .end local v1           #reasonProp:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 96
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v3, "Failed to set setting magic number and write reason"

    invoke-static {v2, v3}, Lcom/android/server/pm/ShutdownThread$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 92
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #reasonProp:Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v2, "ShutdownThread"

    const-string v3, "Writing graceful shutdown reason"

    invoke-static {v2, v3}, Lcom/android/server/pm/ShutdownThread$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/pm/ShutdownReason;->writeReason(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method protected preShutdownRadios(I)V
    .locals 4
    .parameter "timeout"

    .prologue
    const/4 v3, 0x1

    .line 102
    invoke-direct {p0}, Lcom/android/server/pm/ShutdownThreadFeature;->shutdownReason()V

    .line 104
    const-string v1, "ShutdownThread"

    const-string v2, "!@sys.deviceOffReq = 1"

    invoke-static {v1, v2}, Lcom/android/server/pm/ShutdownThread$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v1, "sys.deviceOffReq"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ShutdownThreadFeature;->nfc:Landroid/nfc/INfcAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/ShutdownThreadFeature;->nfc:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 111
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/pm/ShutdownThreadFeature;->nfcOff:Z

    .line 116
    :goto_0
    sget-boolean v1, Lcom/android/server/pm/ShutdownThreadFeature;->nfcOff:Z

    if-nez v1, :cond_1

    .line 117
    const-string v1, "ShutdownThread"

    const-string v2, "Turning off NFC..."

    invoke-static {v1, v2}, Lcom/android/server/pm/ShutdownThread$Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v1, p0, Lcom/android/server/pm/ShutdownThreadFeature;->nfc:Landroid/nfc/INfcAdapter;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/nfc/INfcAdapter;->disable(Z)Z

    .line 125
    :cond_1
    :goto_1
    return-void

    .line 113
    :cond_2
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/pm/ShutdownThreadFeature;->nfcOff:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "ShutdownThread"

    const-string v2, "RemoteException during NFC shutdown"

    invoke-static {v1, v2, v0}, Lcom/android/server/pm/ShutdownThread$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 122
    sput-boolean v3, Lcom/android/server/pm/ShutdownThreadFeature;->nfcOff:Z

    goto :goto_1
.end method

.method public run()V
    .locals 0

    .prologue
    .line 259
    return-void
.end method

.method protected shutdownRadios(ILandroid/content/Context;Z)V
    .locals 12
    .parameter "timeout"
    .parameter "con"
    .parameter "reboot"

    .prologue
    .line 128
    const/16 v6, 0x1f4

    .line 129
    .local v6, PHONE_STATE_POLL_SLEEP_MSEC:I
    iput-object p2, p0, Lcom/android/server/pm/ShutdownThreadFeature;->mContext:Landroid/content/Context;

    .line 130
    iget-object v1, p0, Lcom/android/server/pm/ShutdownThreadFeature;->mContext:Landroid/content/Context;

    const-string v8, "wifi"

    invoke-virtual {v1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 133
    .local v4, mWifiManager:Landroid/net/wifi/WifiManager;
    const-string v1, "sys.radio.shutdown"

    const-string v8, "true"

    invoke-static {v1, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ShutdownThreadFeature;->phone:Lcom/android/internal/telephony/ITelephony;

    if-nez v1, :cond_4

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Lcom/android/server/pm/ShutdownThreadFeature;->radioOff:Z

    .line 140
    sget-boolean v1, Lcom/android/server/pm/ShutdownThreadFeature;->radioOff:Z

    if-nez v1, :cond_0

    .line 141
    const-string v1, "ShutdownThread"

    const-string v8, "!@Turning off radio..."

    invoke-static {v1, v8}, Lcom/android/server/pm/ShutdownThread$Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v1, p0, Lcom/android/server/pm/ShutdownThreadFeature;->phone:Lcom/android/internal/telephony/ITelephony;

    const/4 v8, 0x0

    invoke-interface {v1, v8}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :cond_0
    :goto_1
    const-string v1, "ShutdownThread"

    const-string v8, "!@before Bluetooth"

    invoke-static {v1, v8}, Lcom/android/server/pm/ShutdownThread$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/ShutdownThreadFeature;->bluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/pm/ShutdownThreadFeature;->bluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I

    move-result v1

    const/16 v8, 0xa

    if-ne v1, v8, :cond_5

    :cond_1
    const/4 v1, 0x1

    :goto_2
    sput-boolean v1, Lcom/android/server/pm/ShutdownThreadFeature;->bluetoothOff:Z

    .line 153
    sget-boolean v1, Lcom/android/server/pm/ShutdownThreadFeature;->bluetoothOff:Z

    if-nez v1, :cond_2

    .line 154
    const-string v1, "ShutdownThread"

    const-string v8, "!@Disabling Bluetooth..."

    invoke-static {v1, v8}, Lcom/android/server/pm/ShutdownThread$Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v1, p0, Lcom/android/server/pm/ShutdownThreadFeature;->bluetooth:Landroid/bluetooth/IBluetooth;

    const/4 v8, 0x0

    invoke-interface {v1, v8}, Landroid/bluetooth/IBluetooth;->disable(Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 174
    :cond_2
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    int-to-long v10, p1

    add-long v2, v8, v10

    .line 175
    .local v2, endTime:J
    const/4 v1, 0x1

    new-array v5, v1, [Z

    .line 176
    .local v5, done:[Z
    new-instance v0, Lcom/android/server/pm/ShutdownThreadFeature$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/ShutdownThreadFeature$1;-><init>(Lcom/android/server/pm/ShutdownThreadFeature;JLandroid/net/wifi/WifiManager;[Z)V

    .line 247
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 249
    int-to-long v8, p1

    :try_start_2
    invoke-virtual {v0, v8, v9}, Ljava/lang/Thread;->join(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 252
    :goto_4
    const/4 v1, 0x0

    aget-boolean v1, v5, v1

    if-nez v1, :cond_3

    .line 253
    const-string v1, "ShutdownThread"

    const-string v8, "Timed out waiting for NFC, Radio and Bluetooth shutdown."

    invoke-static {v1, v8}, Lcom/android/server/pm/ShutdownThread$Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_3
    return-void

    .line 139
    .end local v0           #t:Ljava/lang/Thread;
    .end local v2           #endTime:J
    .end local v5           #done:[Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 144
    :catch_0
    move-exception v7

    .line 145
    .local v7, ex:Landroid/os/RemoteException;
    const-string v1, "ShutdownThread"

    const-string v8, "!@RemoteException during radio shutdown"

    invoke-static {v1, v8, v7}, Lcom/android/server/pm/ShutdownThread$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 146
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/pm/ShutdownThreadFeature;->radioOff:Z

    goto :goto_1

    .line 151
    .end local v7           #ex:Landroid/os/RemoteException;
    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    .line 157
    :catch_1
    move-exception v7

    .line 158
    .restart local v7       #ex:Landroid/os/RemoteException;
    const-string v1, "ShutdownThread"

    const-string v8, "!@RemoteException during bluetooth shutdown"

    invoke-static {v1, v8, v7}, Lcom/android/server/pm/ShutdownThread$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 159
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/pm/ShutdownThreadFeature;->bluetoothOff:Z

    goto :goto_3

    .line 250
    .end local v7           #ex:Landroid/os/RemoteException;
    .restart local v0       #t:Ljava/lang/Thread;
    .restart local v2       #endTime:J
    .restart local v5       #done:[Z
    :catch_2
    move-exception v1

    goto :goto_4
.end method
