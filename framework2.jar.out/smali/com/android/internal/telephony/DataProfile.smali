.class public abstract Lcom/android/internal/telephony/DataProfile;
.super Ljava/lang/Object;
.source "DataProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DataProfile$DataProfileType;
    }
.end annotation


# static fields
.field protected static final LOG_TAG:Ljava/lang/String; = "DataProfile"


# instance fields
.field public final apn:Ljava/lang/String;

.field public final authType:I

.field public final bearer:I

.field public final id:I

.field private mDc:Lcom/android/internal/telephony/DataConnection;

.field private mTetheredCallOn:Z

.field public final numeric:Ljava/lang/String;

.field public final password:Ljava/lang/String;

.field public final protocol:Ljava/lang/String;

.field public final roamingProtocol:Ljava/lang/String;

.field public types:[Ljava/lang/String;

.field public final user:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "id"
    .parameter "numeric"
    .parameter "apn"
    .parameter "user"
    .parameter "password"
    .parameter "authType"
    .parameter "types"
    .parameter "protocol"
    .parameter "roamingProtocol"
    .parameter "bearer"

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-boolean v0, p0, Lcom/android/internal/telephony/DataProfile;->mTetheredCallOn:Z

    .line 60
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/DataProfile;->mDc:Lcom/android/internal/telephony/DataConnection;

    .line 64
    iput p1, p0, Lcom/android/internal/telephony/DataProfile;->id:I

    .line 65
    iput-object p2, p0, Lcom/android/internal/telephony/DataProfile;->numeric:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lcom/android/internal/telephony/DataProfile;->apn:Ljava/lang/String;

    .line 67
    iput-object p7, p0, Lcom/android/internal/telephony/DataProfile;->types:[Ljava/lang/String;

    .line 68
    iput-object p4, p0, Lcom/android/internal/telephony/DataProfile;->user:Ljava/lang/String;

    .line 69
    iput-object p5, p0, Lcom/android/internal/telephony/DataProfile;->password:Ljava/lang/String;

    .line 70
    iput-object p8, p0, Lcom/android/internal/telephony/DataProfile;->protocol:Ljava/lang/String;

    .line 71
    iput-object p9, p0, Lcom/android/internal/telephony/DataProfile;->roamingProtocol:Ljava/lang/String;

    .line 72
    iput p10, p0, Lcom/android/internal/telephony/DataProfile;->bearer:I

    .line 74
    const/4 v1, -0x1

    if-ne p6, v1, :cond_0

    .line 76
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 p6, 0x3

    .line 79
    :cond_0
    :goto_0
    iput p6, p0, Lcom/android/internal/telephony/DataProfile;->authType:I

    .line 80
    return-void

    :cond_1
    move p6, v0

    .line 76
    goto :goto_0
.end method


# virtual methods
.method public abstract canHandleType(Ljava/lang/String;)Z
.end method

.method public abstract equalsType(Ljava/lang/String;)Z
.end method

.method public abstract getDataProfileType()Lcom/android/internal/telephony/DataProfile$DataProfileType;
.end method

.method public abstract getProfileId()I
.end method

.method public getServiceTypes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/internal/telephony/DataProfile;->types:[Ljava/lang/String;

    return-object v0
.end method

.method public getTetheredCallOn()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/android/internal/telephony/DataProfile;->mTetheredCallOn:Z

    return v0
.end method

.method isActive()Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/internal/telephony/DataProfile;->mDc:Lcom/android/internal/telephony/DataConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setAsActive(Lcom/android/internal/telephony/DataConnection;)V
    .locals 0
    .parameter "dc"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/internal/telephony/DataProfile;->mDc:Lcom/android/internal/telephony/DataConnection;

    .line 88
    return-void
.end method

.method setAsInactive()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/DataProfile;->mDc:Lcom/android/internal/telephony/DataConnection;

    .line 92
    return-void
.end method

.method public abstract setProfileId(I)V
.end method

.method public setTetheredCallOn(Z)V
    .locals 0
    .parameter "tetheredCallOn"

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/android/internal/telephony/DataProfile;->mTetheredCallOn:Z

    .line 118
    return-void
.end method

.method public abstract toHash()Ljava/lang/String;
.end method

.method public abstract toShortString()Ljava/lang/String;
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[dpt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataProfile;->getDataProfileType()Lcom/android/internal/telephony/DataProfile$DataProfileType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataProfile;->isActive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
