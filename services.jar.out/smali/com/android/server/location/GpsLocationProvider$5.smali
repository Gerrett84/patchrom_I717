.class Lcom/android/server/location/GpsLocationProvider$5;
.super Landroid/telephony/PhoneStateListener;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 3130
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$5;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .parameter "serviceState"

    .prologue
    .line 3136
    move-object v0, p1

    .line 3140
    .local v0, mServiceState:Landroid/telephony/ServiceState;
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v1

    const/16 v2, 0xe

    if-ne v1, v2, :cond_0

    .line 3142
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$5;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const-string v2, "LTE"

    #setter for: Lcom/android/server/location/GpsLocationProvider;->mNetworkInfo:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/server/location/GpsLocationProvider;->access$4802(Lcom/android/server/location/GpsLocationProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 3151
    :goto_0
    return-void

    .line 3147
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$5;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const-string v2, "WCDMA"

    #setter for: Lcom/android/server/location/GpsLocationProvider;->mNetworkInfo:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/server/location/GpsLocationProvider;->access$4802(Lcom/android/server/location/GpsLocationProvider;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
