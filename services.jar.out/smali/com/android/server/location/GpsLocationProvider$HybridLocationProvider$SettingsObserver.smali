.class final Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider$SettingsObserver;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;


# direct methods
.method private constructor <init>(Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 3087
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider$SettingsObserver;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;Lcom/android/server/location/GpsLocationProvider$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3087
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider$SettingsObserver;-><init>(Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 11
    .parameter "o"
    .parameter "arg"

    .prologue
    .line 3089
    const-string v0, "HybridProvider"

    const-string v9, "SettingsObserver.update invoked "

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3090
    const/4 v5, 0x0

    .line 3091
    .local v5, enhLocationServicesSetting:Z
    const/4 v6, 0x0

    .line 3093
    .local v6, enhLocationServicesSettingString:Ljava/lang/String;
    check-cast p1, Landroid/content/ContentQueryMap;

    .end local p1
    invoke-virtual {p1}, Landroid/content/ContentQueryMap;->getRows()Ljava/util/Map;

    move-result-object v7

    .line 3094
    .local v7, kvs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/content/ContentValues;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3095
    const-string v9, "HybridProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "in Settings.Secure.LOCATION_PROVIDERS_ALLOWED - "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v0, "location_providers_allowed"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3097
    const-string v0, "location_providers_allowed"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3098
    .local v8, providers:Ljava/lang/String;
    const-string v0, "gps"

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 3099
    .local v1, gpsSetting:Z
    const-string v0, "network"

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 3100
    .local v2, networkProvSetting:Z
    const-string v0, "wifi_on"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "1"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 3101
    .local v3, wifiSetting:Z
    const-string v0, "assisted_gps_enabled"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "1"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 3103
    .local v4, agpsSetting:Z
    const-string v0, "enhLocationServices_on"

    invoke-interface {v7, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v9, 0x1

    if-ne v0, v9, :cond_2

    .line 3104
    const-string v0, "enhLocationServices_on"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3106
    if-eqz v6, :cond_1

    .line 3107
    const-string v0, "1"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 3117
    :goto_0
    const-string v0, "HybridProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SettingsObserver.update invoked and setting values. Gps:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " GNP:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " WiFi:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Agps:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " enhLocationServicesSettingString: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3122
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider$SettingsObserver;->this$1:Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;->updateSettings(ZZZZZ)Z
    invoke-static/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;->access$4700(Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;ZZZZZ)Z

    .line 3125
    .end local v1           #gpsSetting:Z
    .end local v2           #networkProvSetting:Z
    .end local v3           #wifiSetting:Z
    .end local v4           #agpsSetting:Z
    .end local v8           #providers:Ljava/lang/String;
    :cond_0
    return-void

    .line 3110
    .restart local v1       #gpsSetting:Z
    .restart local v2       #networkProvSetting:Z
    .restart local v3       #wifiSetting:Z
    .restart local v4       #agpsSetting:Z
    .restart local v8       #providers:Ljava/lang/String;
    :cond_1
    const-string v0, "HybridProvider"

    const-string v9, "Got null pinter for call to kvs.get(LocationManager.ENH_LOCATION_SERVICES_ENABLED)"

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3113
    :cond_2
    const-string v0, "HybridProvider"

    const-string v9, "kvs.containsKey(ENH_LOCATION_SERVICES_ENABLED) returned false"

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
