.class Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 3071
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider$1;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3074
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3076
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3077
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider$1;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;

    const/4 v2, 0x1

    #calls: Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;->updateBatteryStatus(Z)Z
    invoke-static {v1, v2}, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;->access$4600(Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;Z)Z

    .line 3078
    const-string v1, "HybridProvider"

    const-string v2, "Battery.update POWER_CONNECTED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3084
    :cond_0
    :goto_0
    return-void

    .line 3080
    :cond_1
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3081
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider$1;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;

    const/4 v2, 0x0

    #calls: Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;->updateBatteryStatus(Z)Z
    invoke-static {v1, v2}, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;->access$4600(Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;Z)Z

    .line 3082
    const-string v1, "HybridProvider"

    const-string v2, "Battery.updatePOWER_DISCONNECTED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
