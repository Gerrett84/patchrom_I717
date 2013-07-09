.class Lcom/android/server/LocationManagerService$ProximityAlerter;
.super Lcom/android/server/location/GeoFencerBase;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProximityAlerter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1714
    iput-object p1, p0, Lcom/android/server/LocationManagerService$ProximityAlerter;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Lcom/android/server/location/GeoFencerBase;-><init>()V

    return-void
.end method


# virtual methods
.method public add(DDFJLandroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 11
    .parameter "latitude"
    .parameter "longitude"
    .parameter "radius"
    .parameter "expiration"
    .parameter "intent"
    .parameter "packageName"

    .prologue
    .line 1719
    new-instance v0, Lcom/android/server/LocationManagerService$ProximityAlert;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$ProximityAlerter;->this$0:Lcom/android/server/LocationManagerService;

    move-wide v2, p1

    move-wide v4, p3

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/server/LocationManagerService$ProximityAlert;-><init>(Lcom/android/server/LocationManagerService;DDFJLandroid/app/PendingIntent;Ljava/lang/String;)V

    invoke-super {p0, v0}, Lcom/android/server/location/GeoFencerBase;->add(Landroid/location/GeoFenceParams;)V

    .line 1722
    return-void
.end method

.method public add(Landroid/location/GeoFenceParams;)V
    .locals 2
    .parameter "geofence"

    .prologue
    .line 1725
    new-instance v0, Lcom/android/server/LocationManagerService$ProximityAlert;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$ProximityAlerter;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {v0, v1, p1}, Lcom/android/server/LocationManagerService$ProximityAlert;-><init>(Lcom/android/server/LocationManagerService;Landroid/location/GeoFenceParams;)V

    invoke-super {p0, v0}, Lcom/android/server/location/GeoFencerBase;->add(Landroid/location/GeoFenceParams;)V

    .line 1726
    return-void
.end method

.method protected start(Landroid/location/GeoFenceParams;)Z
    .locals 10
    .parameter "geoFence"

    .prologue
    .line 1730
    iget-object v0, p0, Lcom/android/server/LocationManagerService$ProximityAlerter;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mProximityReceiver:Lcom/android/server/LocationManagerService$Receiver;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$1500(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1731
    iget-object v0, p0, Lcom/android/server/LocationManagerService$ProximityAlerter;->this$0:Lcom/android/server/LocationManagerService;

    new-instance v1, Lcom/android/server/LocationManagerService$ProximityListener;

    iget-object v2, p0, Lcom/android/server/LocationManagerService$ProximityAlerter;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {v1, v2}, Lcom/android/server/LocationManagerService$ProximityListener;-><init>(Lcom/android/server/LocationManagerService;)V

    #setter for: Lcom/android/server/LocationManagerService;->mProximityListener:Landroid/location/ILocationListener;
    invoke-static {v0, v1}, Lcom/android/server/LocationManagerService;->access$002(Lcom/android/server/LocationManagerService;Landroid/location/ILocationListener;)Landroid/location/ILocationListener;

    .line 1732
    iget-object v0, p0, Lcom/android/server/LocationManagerService$ProximityAlerter;->this$0:Lcom/android/server/LocationManagerService;

    new-instance v1, Lcom/android/server/LocationManagerService$Receiver;

    iget-object v2, p0, Lcom/android/server/LocationManagerService$ProximityAlerter;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v3, p0, Lcom/android/server/LocationManagerService$ProximityAlerter;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mProximityListener:Landroid/location/ILocationListener;
    invoke-static {v3}, Lcom/android/server/LocationManagerService;->access$000(Lcom/android/server/LocationManagerService;)Landroid/location/ILocationListener;

    move-result-object v3

    iget-object v4, p1, Landroid/location/GeoFenceParams;->mPackageName:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/LocationManagerService$Receiver;-><init>(Lcom/android/server/LocationManagerService;Landroid/location/ILocationListener;Ljava/lang/String;)V

    #setter for: Lcom/android/server/LocationManagerService;->mProximityReceiver:Lcom/android/server/LocationManagerService$Receiver;
    invoke-static {v0, v1}, Lcom/android/server/LocationManagerService;->access$1502(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$Receiver;)Lcom/android/server/LocationManagerService$Receiver;

    .line 1734
    iget-object v0, p0, Lcom/android/server/LocationManagerService$ProximityAlerter;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$1600(Lcom/android/server/LocationManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .local v8, i:I
    :goto_0
    if-ltz v8, :cond_0

    .line 1735
    iget-object v0, p0, Lcom/android/server/LocationManagerService$ProximityAlerter;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$1600(Lcom/android/server/LocationManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/LocationProviderInterface;

    .line 1736
    .local v9, provider:Lcom/android/server/location/LocationProviderInterface;
    iget-object v0, p0, Lcom/android/server/LocationManagerService$ProximityAlerter;->this$0:Lcom/android/server/LocationManagerService;

    invoke-interface {v9}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/LocationManagerService$ProximityAlerter;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mProximityReceiver:Lcom/android/server/LocationManagerService$Receiver;
    invoke-static {v6}, Lcom/android/server/LocationManagerService;->access$1500(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v6

    const/4 v7, 0x0

    #calls: Lcom/android/server/LocationManagerService;->requestLocationUpdatesLocked(Ljava/lang/String;JFZLcom/android/server/LocationManagerService$Receiver;Landroid/location/Criteria;)V
    invoke-static/range {v0 .. v7}, Lcom/android/server/LocationManagerService;->access$1700(Lcom/android/server/LocationManagerService;Ljava/lang/String;JFZLcom/android/server/LocationManagerService$Receiver;Landroid/location/Criteria;)V

    .line 1734
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 1740
    .end local v8           #i:I
    .end local v9           #provider:Lcom/android/server/location/LocationProviderInterface;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected stop(Landroid/app/PendingIntent;)Z
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 1745
    invoke-virtual {p0, p1}, Lcom/android/server/LocationManagerService$ProximityAlerter;->getGeoFence(Landroid/app/PendingIntent;)Landroid/location/GeoFenceParams;

    move-result-object v0

    check-cast v0, Lcom/android/server/LocationManagerService$ProximityAlert;

    .line 1746
    .local v0, alert:Lcom/android/server/LocationManagerService$ProximityAlert;
    iget-object v1, p0, Lcom/android/server/LocationManagerService$ProximityAlerter;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mProximitiesEntered:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$1800(Lcom/android/server/LocationManagerService;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1748
    invoke-virtual {p0}, Lcom/android/server/LocationManagerService$ProximityAlerter;->getNumbOfGeoFences()I

    move-result v1

    if-nez v1, :cond_0

    .line 1749
    iget-object v1, p0, Lcom/android/server/LocationManagerService$ProximityAlerter;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v2, p0, Lcom/android/server/LocationManagerService$ProximityAlerter;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mProximityReceiver:Lcom/android/server/LocationManagerService$Receiver;
    invoke-static {v2}, Lcom/android/server/LocationManagerService;->access$1500(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v2

    #calls: Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V
    invoke-static {v1, v2}, Lcom/android/server/LocationManagerService;->access$400(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$Receiver;)V

    .line 1750
    iget-object v1, p0, Lcom/android/server/LocationManagerService$ProximityAlerter;->this$0:Lcom/android/server/LocationManagerService;

    #setter for: Lcom/android/server/LocationManagerService;->mProximityReceiver:Lcom/android/server/LocationManagerService$Receiver;
    invoke-static {v1, v3}, Lcom/android/server/LocationManagerService;->access$1502(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$Receiver;)Lcom/android/server/LocationManagerService$Receiver;

    .line 1751
    iget-object v1, p0, Lcom/android/server/LocationManagerService$ProximityAlerter;->this$0:Lcom/android/server/LocationManagerService;

    #setter for: Lcom/android/server/LocationManagerService;->mProximityListener:Landroid/location/ILocationListener;
    invoke-static {v1, v3}, Lcom/android/server/LocationManagerService;->access$002(Lcom/android/server/LocationManagerService;Landroid/location/ILocationListener;)Landroid/location/ILocationListener;

    .line 1753
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
