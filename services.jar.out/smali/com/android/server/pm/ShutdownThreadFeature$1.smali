.class Lcom/android/server/pm/ShutdownThreadFeature$1;
.super Ljava/lang/Thread;
.source "ShutdownThreadFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/ShutdownThreadFeature;->shutdownRadios(ILandroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/ShutdownThreadFeature;

.field final synthetic val$done:[Z

.field final synthetic val$endTime:J

.field final synthetic val$mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Lcom/android/server/pm/ShutdownThreadFeature;JLandroid/net/wifi/WifiManager;[Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->this$0:Lcom/android/server/pm/ShutdownThreadFeature;

    iput-wide p2, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->val$endTime:J

    iput-object p4, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    iput-object p5, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 178
    const-string v2, "ShutdownThread"

    const-string v5, "!@Waiting for Bluetooth and Radio..."

    invoke-static {v2, v5}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->val$endTime:J

    cmp-long v2, v5, v7

    if-gez v2, :cond_3

    .line 181
    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$000()Z

    move-result v2

    if-nez v2, :cond_0

    .line 183
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->this$0:Lcom/android/server/pm/ShutdownThreadFeature;

    iget-object v2, v2, Lcom/android/server/pm/ShutdownThreadFeature;->bluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I

    move-result v2

    const/16 v5, 0xa

    if-ne v2, v5, :cond_4

    move v2, v3

    :goto_1
    invoke-static {v2}, Lcom/android/server/pm/ShutdownThreadFeature;->access$002(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :cond_0
    :goto_2
    const-string v1, ""

    .line 206
    .local v1, repPhoneOff:Ljava/lang/String;
    const-string v2, "ril.deviceOffRes"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 208
    if-eqz v1, :cond_1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 209
    const-string v2, "ShutdownThread"

    const-string v5, "!@PhoneOff req resp"

    invoke-static {v2, v5}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-static {v3}, Lcom/android/server/pm/ShutdownThreadFeature;->access$102(Z)Z

    .line 215
    :cond_1
    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$200()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->this$0:Lcom/android/server/pm/ShutdownThreadFeature;

    iget-object v2, v2, Lcom/android/server/pm/ShutdownThreadFeature;->nfc:Landroid/nfc/INfcAdapter;

    if-eqz v2, :cond_2

    .line 217
    :try_start_1
    iget-object v2, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->this$0:Lcom/android/server/pm/ShutdownThreadFeature;

    iget-object v2, v2, Lcom/android/server/pm/ShutdownThreadFeature;->nfc:Landroid/nfc/INfcAdapter;

    invoke-interface {v2}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v2

    if-ne v2, v3, :cond_5

    move v2, v3

    :goto_3
    invoke-static {v2}, Lcom/android/server/pm/ShutdownThreadFeature;->access$202(Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 232
    :cond_2
    :goto_4
    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$100()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$000()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$200()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 233
    const-string v2, "ShutdownThread"

    const-string v5, "!@Radio and Bluetooth and nfc shutdown complete."

    invoke-static {v2, v5}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v2, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->val$done:[Z

    aput-boolean v3, v2, v4

    .line 244
    .end local v1           #repPhoneOff:Ljava/lang/String;
    :cond_3
    return-void

    :cond_4
    move v2, v4

    .line 183
    goto :goto_1

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "ShutdownThread"

    const-string v5, "!@RemoteException during bluetooth shutdown"

    invoke-static {v2, v5, v0}, Lcom/android/server/pm/ShutdownThread$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 187
    invoke-static {v3}, Lcom/android/server/pm/ShutdownThreadFeature;->access$002(Z)Z

    goto :goto_2

    .end local v0           #ex:Landroid/os/RemoteException;
    .restart local v1       #repPhoneOff:Ljava/lang/String;
    :cond_5
    move v2, v4

    .line 217
    goto :goto_3

    .line 218
    :catch_1
    move-exception v0

    .line 219
    .restart local v0       #ex:Landroid/os/RemoteException;
    const-string v2, "ShutdownThread"

    const-string v5, "RemoteException during NFC shutdown"

    invoke-static {v2, v5, v0}, Lcom/android/server/pm/ShutdownThread$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 220
    invoke-static {v3}, Lcom/android/server/pm/ShutdownThreadFeature;->access$202(Z)Z

    goto :goto_4

    .line 239
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_6
    const-string v2, "ShutdownThread"

    const-string v5, "!@before SystemClock.sleep(PHONE_STATE_POLL_SLEEP_MSEC)"

    invoke-static {v2, v5}, Lcom/android/server/pm/ShutdownThread$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const-wide/16 v5, 0x1f4

    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    .line 241
    const-string v2, "ShutdownThread"

    const-string v5, "!@after SystemClock.sleep(PHONE_STATE_POLL_SLEEP_MSEC)"

    invoke-static {v2, v5}, Lcom/android/server/pm/ShutdownThread$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const-string v2, "ShutdownThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!@[Phone off retry:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->val$endTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " radioOff="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$100()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bluetoothOff="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$000()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/server/pm/ShutdownThread$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
