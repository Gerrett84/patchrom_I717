.class Lcom/android/internal/telephony/IntRangeManager$IntRange;
.super Ljava/lang/Object;
.source "IntRangeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IntRangeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntRange"
.end annotation


# instance fields
.field final clients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/IntRangeManager$ClientRange;",
            ">;"
        }
    .end annotation
.end field

.field endId:I

.field startId:I

.field final synthetic this$0:Lcom/android/internal/telephony/IntRangeManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter "startId"
    .parameter "endId"
    .parameter "client"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->this$0:Lcom/android/internal/telephony/IntRangeManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p2, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    .line 68
    iput p3, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    .line 70
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/IntRangeManager;Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V
    .locals 2
    .parameter
    .parameter "clientRange"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->this$0:Lcom/android/internal/telephony/IntRangeManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iget v0, p2, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->startId:I

    iput v0, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    .line 79
    iget v0, p2, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->endId:I

    iput v0, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/IntRangeManager;Lcom/android/internal/telephony/IntRangeManager$IntRange;I)V
    .locals 3
    .parameter
    .parameter "intRange"
    .parameter "numElements"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->this$0:Lcom/android/internal/telephony/IntRangeManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iget v1, p2, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    iput v1, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    .line 96
    iget v1, p2, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    iput v1, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    .line 97
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p2, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    .line 98
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 99
    iget-object v1, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    iget-object v2, p2, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_0
    return-void
.end method


# virtual methods
.method insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V
    .locals 6
    .parameter "range"

    .prologue
    .line 113
    iget-object v4, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 114
    .local v2, len:I
    const/4 v1, -0x1

    .line 115
    .local v1, insert:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 116
    iget-object v4, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .line 117
    .local v3, nextRange:Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    iget v4, p1, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->startId:I

    iget v5, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->startId:I

    if-gt v4, v5, :cond_0

    .line 119
    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 121
    iget v4, p1, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->startId:I

    iget v5, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->startId:I

    if-ne v4, v5, :cond_1

    iget v4, p1, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->endId:I

    iget v5, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->endId:I

    if-le v4, v5, :cond_1

    .line 122
    add-int/lit8 v1, v0, 0x1

    .line 123
    if-ge v1, v2, :cond_3

    .line 115
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    invoke-virtual {v4, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 140
    .end local v3           #nextRange:Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    :cond_2
    :goto_1
    return-void

    .line 135
    :cond_3
    const/4 v4, -0x1

    if-eq v1, v4, :cond_4

    if-ge v1, v2, :cond_4

    .line 136
    iget-object v4, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    invoke-virtual {v4, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 139
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
