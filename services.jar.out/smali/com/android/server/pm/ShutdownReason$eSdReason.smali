.class final enum Lcom/android/server/pm/ShutdownReason$eSdReason;
.super Ljava/lang/Enum;
.source "ShutdownReason.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShutdownReason;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "eSdReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/pm/ShutdownReason$eSdReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/pm/ShutdownReason$eSdReason;

.field public static final enum SD_ABNS:Lcom/android/server/pm/ShutdownReason$eSdReason;

.field public static final enum SD_COUNT:Lcom/android/server/pm/ShutdownReason$eSdReason;

.field public static final enum SD_DTSR:Lcom/android/server/pm/ShutdownReason$eSdReason;

.field public static final enum SD_GARB:Lcom/android/server/pm/ShutdownReason$eSdReason;

.field public static final enum SD_GASD:Lcom/android/server/pm/ShutdownReason$eSdReason;

.field public static final enum SD_LBSD:Lcom/android/server/pm/ShutdownReason$eSdReason;

.field public static final enum SD_LUCR:Lcom/android/server/pm/ShutdownReason$eSdReason;

.field public static final enum SD_PCNF:Lcom/android/server/pm/ShutdownReason$eSdReason;

.field public static final enum SD_PWDR:Lcom/android/server/pm/ShutdownReason$eSdReason;

.field public static final enum SD_RTNR:Lcom/android/server/pm/ShutdownReason$eSdReason;

.field public static final enum SD_SSSR:Lcom/android/server/pm/ShutdownReason$eSdReason;

.field public static final enum SD_UPSR:Lcom/android/server/pm/ShutdownReason$eSdReason;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    new-instance v0, Lcom/android/server/pm/ShutdownReason$eSdReason;

    const-string v1, "SD_ABNS"

    invoke-direct {v0, v1, v3}, Lcom/android/server/pm/ShutdownReason$eSdReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/pm/ShutdownReason$eSdReason;->SD_ABNS:Lcom/android/server/pm/ShutdownReason$eSdReason;

    new-instance v0, Lcom/android/server/pm/ShutdownReason$eSdReason;

    const-string v1, "SD_DTSR"

    invoke-direct {v0, v1, v4}, Lcom/android/server/pm/ShutdownReason$eSdReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/pm/ShutdownReason$eSdReason;->SD_DTSR:Lcom/android/server/pm/ShutdownReason$eSdReason;

    new-instance v0, Lcom/android/server/pm/ShutdownReason$eSdReason;

    const-string v1, "SD_GARB"

    invoke-direct {v0, v1, v5}, Lcom/android/server/pm/ShutdownReason$eSdReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/pm/ShutdownReason$eSdReason;->SD_GARB:Lcom/android/server/pm/ShutdownReason$eSdReason;

    new-instance v0, Lcom/android/server/pm/ShutdownReason$eSdReason;

    const-string v1, "SD_GASD"

    invoke-direct {v0, v1, v6}, Lcom/android/server/pm/ShutdownReason$eSdReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/pm/ShutdownReason$eSdReason;->SD_GASD:Lcom/android/server/pm/ShutdownReason$eSdReason;

    .line 40
    new-instance v0, Lcom/android/server/pm/ShutdownReason$eSdReason;

    const-string v1, "SD_LBSD"

    invoke-direct {v0, v1, v7}, Lcom/android/server/pm/ShutdownReason$eSdReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/pm/ShutdownReason$eSdReason;->SD_LBSD:Lcom/android/server/pm/ShutdownReason$eSdReason;

    new-instance v0, Lcom/android/server/pm/ShutdownReason$eSdReason;

    const-string v1, "SD_LUCR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/ShutdownReason$eSdReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/pm/ShutdownReason$eSdReason;->SD_LUCR:Lcom/android/server/pm/ShutdownReason$eSdReason;

    new-instance v0, Lcom/android/server/pm/ShutdownReason$eSdReason;

    const-string v1, "SD_PCNF"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/ShutdownReason$eSdReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/pm/ShutdownReason$eSdReason;->SD_PCNF:Lcom/android/server/pm/ShutdownReason$eSdReason;

    new-instance v0, Lcom/android/server/pm/ShutdownReason$eSdReason;

    const-string v1, "SD_PWDR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/ShutdownReason$eSdReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/pm/ShutdownReason$eSdReason;->SD_PWDR:Lcom/android/server/pm/ShutdownReason$eSdReason;

    .line 41
    new-instance v0, Lcom/android/server/pm/ShutdownReason$eSdReason;

    const-string v1, "SD_RTNR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/ShutdownReason$eSdReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/pm/ShutdownReason$eSdReason;->SD_RTNR:Lcom/android/server/pm/ShutdownReason$eSdReason;

    new-instance v0, Lcom/android/server/pm/ShutdownReason$eSdReason;

    const-string v1, "SD_SSSR"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/ShutdownReason$eSdReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/pm/ShutdownReason$eSdReason;->SD_SSSR:Lcom/android/server/pm/ShutdownReason$eSdReason;

    new-instance v0, Lcom/android/server/pm/ShutdownReason$eSdReason;

    const-string v1, "SD_UPSR"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/ShutdownReason$eSdReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/pm/ShutdownReason$eSdReason;->SD_UPSR:Lcom/android/server/pm/ShutdownReason$eSdReason;

    .line 42
    new-instance v0, Lcom/android/server/pm/ShutdownReason$eSdReason;

    const-string v1, "SD_COUNT"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/ShutdownReason$eSdReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/pm/ShutdownReason$eSdReason;->SD_COUNT:Lcom/android/server/pm/ShutdownReason$eSdReason;

    .line 38
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/android/server/pm/ShutdownReason$eSdReason;

    sget-object v1, Lcom/android/server/pm/ShutdownReason$eSdReason;->SD_ABNS:Lcom/android/server/pm/ShutdownReason$eSdReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/pm/ShutdownReason$eSdReason;->SD_DTSR:Lcom/android/server/pm/ShutdownReason$eSdReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/pm/ShutdownReason$eSdReason;->SD_GARB:Lcom/android/server/pm/ShutdownReason$eSdReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/pm/ShutdownReason$eSdReason;->SD_GASD:Lcom/android/server/pm/ShutdownReason$eSdReason;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/pm/ShutdownReason$eSdReason;->SD_LBSD:Lcom/android/server/pm/ShutdownReason$eSdReason;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/server/pm/ShutdownReason$eSdReason;->SD_LUCR:Lcom/android/server/pm/ShutdownReason$eSdReason;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/server/pm/ShutdownReason$eSdReason;->SD_PCNF:Lcom/android/server/pm/ShutdownReason$eSdReason;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/server/pm/ShutdownReason$eSdReason;->SD_PWDR:Lcom/android/server/pm/ShutdownReason$eSdReason;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/server/pm/ShutdownReason$eSdReason;->SD_RTNR:Lcom/android/server/pm/ShutdownReason$eSdReason;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/server/pm/ShutdownReason$eSdReason;->SD_SSSR:Lcom/android/server/pm/ShutdownReason$eSdReason;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/server/pm/ShutdownReason$eSdReason;->SD_UPSR:Lcom/android/server/pm/ShutdownReason$eSdReason;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/server/pm/ShutdownReason$eSdReason;->SD_COUNT:Lcom/android/server/pm/ShutdownReason$eSdReason;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/pm/ShutdownReason$eSdReason;->$VALUES:[Lcom/android/server/pm/ShutdownReason$eSdReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/pm/ShutdownReason$eSdReason;
    .locals 1
    .parameter "name"

    .prologue
    .line 38
    const-class v0, Lcom/android/server/pm/ShutdownReason$eSdReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/ShutdownReason$eSdReason;

    return-object v0
.end method

.method public static values()[Lcom/android/server/pm/ShutdownReason$eSdReason;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/android/server/pm/ShutdownReason$eSdReason;->$VALUES:[Lcom/android/server/pm/ShutdownReason$eSdReason;

    invoke-virtual {v0}, [Lcom/android/server/pm/ShutdownReason$eSdReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/pm/ShutdownReason$eSdReason;

    return-object v0
.end method
