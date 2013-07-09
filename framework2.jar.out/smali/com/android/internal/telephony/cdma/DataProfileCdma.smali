.class public Lcom/android/internal/telephony/cdma/DataProfileCdma;
.super Lcom/android/internal/telephony/DataProfile;
.source "DataProfileCdma.java"


# instance fields
.field private mProfileId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "id"
    .parameter "numeric"
    .parameter "name"
    .parameter "user"
    .parameter "password"
    .parameter "authType"
    .parameter "types"
    .parameter "protocol"
    .parameter "roamingProtocol"
    .parameter "bearer"

    .prologue
    .line 31
    invoke-direct/range {p0 .. p10}, Lcom/android/internal/telephony/DataProfile;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/DataProfileCdma;->mProfileId:I

    .line 33
    return-void
.end method


# virtual methods
.method public canHandleType(Ljava/lang/String;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/internal/telephony/DataProfile;->types:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equalsType(Ljava/lang/String;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public getDataProfileType()Lcom/android/internal/telephony/DataProfile$DataProfileType;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_CDMA:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    return-object v0
.end method

.method public getProfileId()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/android/internal/telephony/cdma/DataProfileCdma;->mProfileId:I

    return v0
.end method

.method public setProfileId(I)V
    .locals 0
    .parameter "profileId"

    .prologue
    .line 58
    iput p1, p0, Lcom/android/internal/telephony/cdma/DataProfileCdma;->mProfileId:I

    .line 59
    return-void
.end method

.method public toHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/DataProfileCdma;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const-string v0, "DataProfileCdma"

    return-object v0
.end method
