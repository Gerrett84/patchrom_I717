.class public Landroid/telephony/cdma/CdmaCellLocation;
.super Landroid/telephony/CellLocation;
.source "CdmaCellLocation.java"


# static fields
.field public static final INVALID_LAT_LONG:I = 0x7fffffff

.field private static final LOG_TAG:Ljava/lang/String; = "CdmaCellLocation"


# instance fields
.field private lm:Landroid/location/ILocationManager;

.field private mBaseStationId:I

.field private mBaseStationLatitude:I

.field private mBaseStationLongitude:I

.field public mGsmCellLoc:Landroid/telephony/gsm/GsmCellLocation;

.field private mLteCellId:I

.field private mNetworkId:I

.field private mSystemId:I

.field private mTac:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const v2, 0x7fffffff

    const/4 v1, -0x1

    .line 78
    invoke-direct {p0}, Landroid/telephony/CellLocation;-><init>()V

    .line 35
    iput v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    .line 48
    iput v2, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    .line 56
    iput v2, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    .line 58
    iput v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    .line 59
    iput v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    .line 62
    iput v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mTac:I

    .line 63
    iput v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mLteCellId:I

    .line 66
    const-string v0, "location"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->lm:Landroid/location/ILocationManager;

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mGsmCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 79
    iput v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    .line 80
    iput v2, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    .line 81
    iput v2, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    .line 82
    iput v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    .line 83
    iput v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    .line 85
    iput v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mTac:I

    .line 86
    iput v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mLteCellId:I

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    const v1, 0x7fffffff

    const/4 v0, -0x1

    .line 93
    invoke-direct {p0}, Landroid/telephony/CellLocation;-><init>()V

    .line 35
    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    .line 48
    iput v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    .line 56
    iput v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    .line 58
    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    .line 59
    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    .line 62
    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mTac:I

    .line 63
    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mLteCellId:I

    .line 66
    const-string v0, "location"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->lm:Landroid/location/ILocationManager;

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mGsmCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 94
    const-string v0, "baseStationId"

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    .line 95
    const-string v0, "baseStationLatitude"

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    .line 96
    const-string v0, "baseStationLongitude"

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    .line 97
    const-string/jumbo v0, "systemId"

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    .line 98
    const-string/jumbo v0, "networkId"

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    .line 105
    return-void
.end method

.method private static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 300
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v3, 0x0

    .line 260
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    .local v2, s:Landroid/telephony/cdma/CdmaCellLocation;
    if-nez p1, :cond_1

    .line 269
    .end local v2           #s:Landroid/telephony/cdma/CdmaCellLocation;
    :cond_0
    :goto_0
    return v3

    .line 261
    :catch_0
    move-exception v1

    .line 262
    .local v1, ex:Ljava/lang/ClassCastException;
    goto :goto_0

    .line 269
    .end local v1           #ex:Ljava/lang/ClassCastException;
    .restart local v2       #s:Landroid/telephony/cdma/CdmaCellLocation;
    :cond_1
    iget v4, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/cdma/CdmaCellLocation;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/cdma/CdmaCellLocation;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/cdma/CdmaCellLocation;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/cdma/CdmaCellLocation;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/cdma/CdmaCellLocation;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundleToFill"

    .prologue
    .line 309
    const-string v0, "baseStationId"

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 310
    const-string v0, "baseStationLatitude"

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 311
    const-string v0, "baseStationLongitude"

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 312
    const-string/jumbo v0, "systemId"

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 313
    const-string/jumbo v0, "networkId"

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 320
    iget-object v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mGsmCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mGsmCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0, p1}, Landroid/telephony/gsm/GsmCellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 323
    :cond_0
    return-void
.end method

.method public getBaseStationId()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    return v0
.end method

.method public getBaseStationLatitude()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    return v0
.end method

.method public getBaseStationLongitude()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    return v0
.end method

.method public getLteCellId()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mLteCellId:I

    return v0
.end method

.method public getLteTac()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mTac:I

    return v0
.end method

.method public getNetworkId()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    return v0
.end method

.method public getSystemId()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 251
    iget v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    xor-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    xor-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    xor-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    const v2, 0x7fffffff

    const/4 v1, -0x1

    .line 329
    iget v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCellLocationData(III)V
    .locals 0
    .parameter "baseStationId"
    .parameter "baseStationLatitude"
    .parameter "baseStationLongitude"

    .prologue
    .line 223
    iput p1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    .line 224
    iput p2, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    .line 225
    iput p3, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    .line 226
    return-void
.end method

.method public setCellLocationData(IIIII)V
    .locals 0
    .parameter "baseStationId"
    .parameter "baseStationLatitude"
    .parameter "baseStationLongitude"
    .parameter "systemId"
    .parameter "networkId"

    .prologue
    .line 234
    iput p1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    .line 235
    iput p2, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    .line 236
    iput p3, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    .line 237
    iput p4, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    .line 238
    iput p5, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    .line 239
    return-void
.end method

.method public setLteCellLocationData(II)V
    .locals 0
    .parameter "tac"
    .parameter "cell_id"

    .prologue
    .line 243
    iput p1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mTac:I

    .line 244
    iput p2, p0, Landroid/telephony/cdma/CdmaCellLocation;->mLteCellId:I

    .line 245
    return-void
.end method

.method public setStateInvalid()V
    .locals 2

    .prologue
    const v1, 0x7fffffff

    const/4 v0, -0x1

    .line 205
    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    .line 206
    iput v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    .line 207
    iput v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    .line 208
    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    .line 209
    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    .line 211
    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mTac:I

    .line 212
    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mLteCellId:I

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mGsmCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 215
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
