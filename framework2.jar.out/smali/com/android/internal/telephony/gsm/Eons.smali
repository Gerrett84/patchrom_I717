.class public final Lcom/android/internal/telephony/gsm/Eons;
.super Ljava/lang/Object;
.source "Eons.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/Eons$CphsType;,
        Lcom/android/internal/telephony/gsm/Eons$EonsControlState;,
        Lcom/android/internal/telephony/gsm/Eons$EonsState;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field static final LOG_TAG:Ljava/lang/String; = "GSM"


# instance fields
.field mOplDataState:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

.field mOplRecords:Lcom/android/internal/telephony/gsm/OplRecords;

.field mPnnDataState:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

.field mPnnRecords:Lcom/android/internal/telephony/gsm/PnnRecords;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 112
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 106
    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsControlState;->INITING:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnDataState:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    .line 107
    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsControlState;->INITING:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mOplDataState:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    .line 113
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/Eons;->reset()V

    .line 114
    return-void
.end method

.method private getEonsState()Lcom/android/internal/telephony/gsm/Eons$EonsState;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnDataState:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/Eons$EonsControlState;->isIniting()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mOplDataState:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/Eons$EonsControlState;->isIniting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsState;->INITING:Lcom/android/internal/telephony/gsm/Eons$EonsState;

    .line 304
    :goto_0
    return-object v0

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnDataState:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/Eons$EonsControlState;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 297
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mOplDataState:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/Eons$EonsControlState;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 298
    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsState;->PNN_AND_OPL_PRESENT:Lcom/android/internal/telephony/gsm/Eons$EonsState;

    goto :goto_0

    .line 300
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsState;->PNN_PRESENT:Lcom/android/internal/telephony/gsm/Eons$EonsState;

    goto :goto_0

    .line 304
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsState;->DISABLED:Lcom/android/internal/telephony/gsm/Eons$EonsState;

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 309
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EONS] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 313
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EONS] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return-void
.end method

.method private updateEonsFromOplAndPnn(Ljava/lang/String;I)V
    .locals 4
    .parameter "regOperator"
    .parameter "lac"

    .prologue
    const/4 v3, 0x1

    .line 256
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/Eons;->mOplRecords:Lcom/android/internal/telephony/gsm/OplRecords;

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/internal/telephony/gsm/OplRecords;->getMatchingPnnRecord(Ljava/lang/String;IZ)I

    move-result v1

    .line 257
    .local v1, pnnRecord:I
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnRecords:Lcom/android/internal/telephony/gsm/PnnRecords;

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/telephony/gsm/PnnRecords;->getNameFromPnnRecord(IZ)Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, pnnName:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fetched EONS name from EF_PNN record = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/Eons;->log(Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method private updateEonsIfHplmn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "regOperator"
    .parameter "hplmn"

    .prologue
    const/4 v3, 0x1

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Comparing hplmn, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with registered plmn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/Eons;->log(Ljava/lang/String;)V

    .line 272
    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnRecords:Lcom/android/internal/telephony/gsm/PnnRecords;

    invoke-virtual {v1, v3, v3}, Lcom/android/internal/telephony/gsm/PnnRecords;->getNameFromPnnRecord(IZ)Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, pnnName:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fetched EONS name from EF_PNN\'s first record, name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/Eons;->log(Ljava/lang/String;)V

    .line 276
    .end local v0           #pnnName:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public getEons()Ljava/lang/String;
    .locals 2

    .prologue
    .line 151
    const/4 v0, 0x0

    .line 153
    .local v0, name:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnRecords:Lcom/android/internal/telephony/gsm/PnnRecords;

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnRecords:Lcom/android/internal/telephony/gsm/PnnRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/PnnRecords;->getCurrentEons()Ljava/lang/String;

    move-result-object v0

    .line 156
    :cond_0
    return-object v0
.end method

.method public getEonsForAvailableNetworks(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    .local p1, avlNetworks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    const/4 v6, 0x0

    .line 201
    .local v6, eonsNetworkNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/Eons;->getEonsState()Lcom/android/internal/telephony/gsm/Eons$EonsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/Eons$EonsState;->isPnnAndOplPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    const-string v0, "OPL/PNN data is not available. Use the network names from Ril."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/Eons;->loge(Ljava/lang/String;)V

    .line 203
    const/4 v0, 0x0

    .line 242
    :goto_0
    return-object v0

    .line 206
    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 207
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 208
    .local v10, size:I
    new-instance v6, Ljava/util/ArrayList;

    .end local v6           #eonsNetworkNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    invoke-direct {v6, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 209
    .restart local v6       #eonsNetworkNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Available Networks List Size = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/Eons;->log(Ljava/lang/String;)V

    .line 210
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v10, :cond_4

    .line 211
    const/4 v9, 0x0

    .line 212
    .local v9, pnnRecord:I
    const/4 v1, 0x0

    .line 215
    .local v1, pnnName:Ljava/lang/String;
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/OperatorInfo;

    .line 218
    .local v8, ni:Lcom/android/internal/telephony/OperatorInfo;
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mOplRecords:Lcom/android/internal/telephony/gsm/OplRecords;

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/telephony/gsm/OplRecords;->getMatchingPnnRecord(Ljava/lang/String;IZ)I

    move-result v9

    .line 222
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnRecords:Lcom/android/internal/telephony/gsm/PnnRecords;

    const/4 v2, 0x0

    invoke-virtual {v0, v9, v2}, Lcom/android/internal/telephony/gsm/PnnRecords;->getNameFromPnnRecord(IZ)Ljava/lang/String;

    move-result-object v1

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PLMN = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", ME Name = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", PNN Name = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/Eons;->log(Ljava/lang/String;)V

    .line 227
    if-nez v1, :cond_1

    .line 228
    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    .line 230
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_RIL_DisplayRatInfoInManualNetSearchList"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 231
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo;

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getState()Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v4

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorRat()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/OperatorInfo$State;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 234
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo;

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getState()Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/OperatorInfo$State;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 239
    .end local v1           #pnnName:Ljava/lang/String;
    .end local v7           #i:I
    .end local v8           #ni:Lcom/android/internal/telephony/OperatorInfo;
    .end local v9           #pnnRecord:I
    .end local v10           #size:I
    :cond_3
    const-string v0, "Available Networks List is empty"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/Eons;->loge(Ljava/lang/String;)V

    :cond_4
    move-object v0, v6

    .line 242
    goto/16 :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 118
    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsControlState;->INITING:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnDataState:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    .line 119
    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsControlState;->INITING:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mOplDataState:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    .line 120
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/Eons;->mOplRecords:Lcom/android/internal/telephony/gsm/OplRecords;

    .line 121
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnRecords:Lcom/android/internal/telephony/gsm/PnnRecords;

    .line 122
    return-void
.end method

.method public resetOplData()V
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsControlState;->ABSENT:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mOplDataState:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mOplRecords:Lcom/android/internal/telephony/gsm/OplRecords;

    .line 132
    return-void
.end method

.method public resetPnnData()V
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsControlState;->ABSENT:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnDataState:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnRecords:Lcom/android/internal/telephony/gsm/PnnRecords;

    .line 142
    return-void
.end method

.method public setOplData(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsControlState;->PRESENT:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mOplDataState:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    .line 126
    new-instance v0, Lcom/android/internal/telephony/gsm/OplRecords;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/gsm/OplRecords;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mOplRecords:Lcom/android/internal/telephony/gsm/OplRecords;

    .line 127
    return-void
.end method

.method public setPnnData(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsControlState;->PRESENT:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnDataState:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    .line 136
    new-instance v0, Lcom/android/internal/telephony/gsm/PnnRecords;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/gsm/PnnRecords;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnRecords:Lcom/android/internal/telephony/gsm/PnnRecords;

    .line 137
    return-void
.end method

.method public updateEons(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 2
    .parameter "regOperator"
    .parameter "lac"
    .parameter "hplmn"

    .prologue
    .line 169
    const/4 v0, 0x1

    .line 171
    .local v0, needsOperatorNameUpdate:Z
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/Eons;->getEonsState()Lcom/android/internal/telephony/gsm/Eons$EonsState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/Eons$EonsState;->isPnnAndOplPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/Eons;->updateEonsFromOplAndPnn(Ljava/lang/String;I)V

    .line 189
    :cond_0
    :goto_0
    return v0

    .line 177
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/Eons;->getEonsState()Lcom/android/internal/telephony/gsm/Eons$EonsState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/Eons$EonsState;->isPnnPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 180
    invoke-direct {p0, p1, p3}, Lcom/android/internal/telephony/gsm/Eons;->updateEonsIfHplmn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 181
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/Eons;->getEonsState()Lcom/android/internal/telephony/gsm/Eons$EonsState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/Eons$EonsState;->isIniting()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    const-string v1, "Reading data from EF_OPL or EF_PNN is not complete. Suppress operator name display until all EF_OPL/EF_PNN data is read."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/Eons;->log(Ljava/lang/String;)V

    .line 184
    const/4 v0, 0x0

    goto :goto_0
.end method
