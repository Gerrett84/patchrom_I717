.class public Lcom/sec/android/app/fm/HwTunningActivity;
.super Landroid/app/Activity;
.source "HwTunningActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field LOG_TAG:Ljava/lang/String;

.field private MAX_REG_COUNT:I

.field private final MENU_CONTEXT_GOTO_INTENNA_TEST:I

.field private final MENU_CONTEXT_GOTO_RSSI_TEST:I

.field private final MENU_CONTEXT_GOTO_SOFTMUTE_TEST:I

.field private final MENU_CONTEXT_GOTO_SOFTMUTE_TEST_STE:I

.field private final MENU_CONTEXT_GOTO_VOLUMESETTING_TEST:I

.field i:I

.field private mCancelButton:Landroid/widget/Button;

.field private mEditReg:[Landroid/widget/EditText;

.field mEditTextId:[I

.field private mOkButton:Landroid/widget/Button;

.field mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

.field private mSkipValue:Landroid/widget/Button;

.field private mTextLabel:[Landroid/widget/TextView;

.field mTextViewId:[I

.field private mThailandApplyButton:Landroid/widget/Button;

.field private mThailandCancelButton:Landroid/widget/Button;

.field registerName:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x9

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    iput v3, p0, Lcom/sec/android/app/fm/HwTunningActivity;->MAX_REG_COUNT:I

    .line 29
    iget v0, p0, Lcom/sec/android/app/fm/HwTunningActivity;->MAX_REG_COUNT:I

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/fm/HwTunningActivity;->mTextLabel:[Landroid/widget/TextView;

    .line 31
    iget v0, p0, Lcom/sec/android/app/fm/HwTunningActivity;->MAX_REG_COUNT:I

    new-array v0, v0, [Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sec/android/app/fm/HwTunningActivity;->mEditReg:[Landroid/widget/EditText;

    .line 33
    const-string v0, "###"

    iput-object v0, p0, Lcom/sec/android/app/fm/HwTunningActivity;->LOG_TAG:Ljava/lang/String;

    .line 35
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "RSSI"

    aput-object v1, v0, v4

    const-string v1, "SNR"

    aput-object v1, v0, v5

    const-string v1, "CNT"

    aput-object v1, v0, v6

    const-string v1, "RSSI_2"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "SNR_2"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "CNT_2"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "AF"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "AFValid"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "CurrentRSSI"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/fm/HwTunningActivity;->registerName:[Ljava/lang/String;

    .line 39
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/app/fm/HwTunningActivity;->mTextViewId:[I

    .line 44
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/sec/android/app/fm/HwTunningActivity;->mEditTextId:[I

    .line 49
    iput v4, p0, Lcom/sec/android/app/fm/HwTunningActivity;->i:I

    .line 57
    iput v5, p0, Lcom/sec/android/app/fm/HwTunningActivity;->MENU_CONTEXT_GOTO_RSSI_TEST:I

    .line 59
    iput v6, p0, Lcom/sec/android/app/fm/HwTunningActivity;->MENU_CONTEXT_GOTO_INTENNA_TEST:I

    .line 61
    iput v7, p0, Lcom/sec/android/app/fm/HwTunningActivity;->MENU_CONTEXT_GOTO_SOFTMUTE_TEST:I

    .line 63
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/fm/HwTunningActivity;->MENU_CONTEXT_GOTO_VOLUMESETTING_TEST:I

    .line 64
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/fm/HwTunningActivity;->MENU_CONTEXT_GOTO_SOFTMUTE_TEST_STE:I

    return-void

    .line 39
    :array_0
    .array-data 0x4
        0x11t 0x0t 0x7t 0x7ft
        0x13t 0x0t 0x7t 0x7ft
        0x15t 0x0t 0x7t 0x7ft
        0x18t 0x0t 0x7t 0x7ft
        0x1bt 0x0t 0x7t 0x7ft
        0x1et 0x0t 0x7t 0x7ft
        0x20t 0x0t 0x7t 0x7ft
        0x22t 0x0t 0x7t 0x7ft
        0x24t 0x0t 0x7t 0x7ft
    .end array-data

    .line 44
    :array_1
    .array-data 0x4
        0x12t 0x0t 0x7t 0x7ft
        0x14t 0x0t 0x7t 0x7ft
        0x16t 0x0t 0x7t 0x7ft
        0x19t 0x0t 0x7t 0x7ft
        0x1ct 0x0t 0x7t 0x7ft
        0x1ft 0x0t 0x7t 0x7ft
        0x21t 0x0t 0x7t 0x7ft
        0x23t 0x0t 0x7t 0x7ft
        0x25t 0x0t 0x7t 0x7ft
    .end array-data
.end method

.method private SkipTuning_Value()V
    .locals 2

    .prologue
    .line 191
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/fm/HwTunningActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayer;->SkipTuning_Value()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initialize()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    .line 72
    const v3, 0x7f070026

    invoke-virtual {p0, v3}, Lcom/sec/android/app/fm/HwTunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/sec/android/app/fm/HwTunningActivity;->mOkButton:Landroid/widget/Button;

    .line 73
    iget-object v3, p0, Lcom/sec/android/app/fm/HwTunningActivity;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v3, p0, Lcom/sec/android/app/fm/HwTunningActivity;->mOkButton:Landroid/widget/Button;

    const-string v4, "Save"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 76
    const v3, 0x7f070027

    invoke-virtual {p0, v3}, Lcom/sec/android/app/fm/HwTunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/sec/android/app/fm/HwTunningActivity;->mCancelButton:Landroid/widget/Button;

    .line 77
    iget-object v3, p0, Lcom/sec/android/app/fm/HwTunningActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v3, p0, Lcom/sec/android/app/fm/HwTunningActivity;->mCancelButton:Landroid/widget/Button;

    const-string v4, "Cancel"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 80
    const v3, 0x7f070028

    invoke-virtual {p0, v3}, Lcom/sec/android/app/fm/HwTunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/sec/android/app/fm/HwTunningActivity;->mSkipValue:Landroid/widget/Button;

    .line 81
    iget-object v3, p0, Lcom/sec/android/app/fm/HwTunningActivity;->mSkipValue:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v3, p0, Lcom/sec/android/app/fm/HwTunningActivity;->mSkipValue:Landroid/widget/Button;

    const-string v4, "Apply Value for scan"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 84
    const v3, 0x7f070029

    invoke-virtual {p0, v3}, Lcom/sec/android/app/fm/HwTunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/sec/android/app/fm/HwTunningActivity;->mThailandApplyButton:Landroid/widget/Button;

    .line 85
    iget-object v3, p0, Lcom/sec/android/app/fm/HwTunningActivity;->mThailandApplyButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v3, p0, Lcom/sec/android/app/fm/HwTunningActivity;->mThailandApplyButton:Landroid/widget/Button;

    const-string v4, "ThaiUI_Apply"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 88
    const v3, 0x7f07002a

    invoke-virtual {p0, v3}, Lcom/sec/android/app/fm/HwTunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/sec/android/app/fm/HwTunningActivity;->mThailandCancelButton:Landroid/widget/Button;

    .line 89
    iget-object v3, p0, Lcom/sec/android/app/fm/HwTunningActivity;->mThailandCancelButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v3, p0, Lcom/sec/android/app/fm/HwTunningActivity;->mThailandCancelButton:Landroid/widget/Button;

    const-string v4, "ThaiUI_Cancel"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 92
    const-string v3, "FMPlayer"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/fm/HwTunningActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/media/fmradio/FMPlayer;

    iput-object v3, p0, Lcom/sec/android/app/fm/HwTunningActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    .line 99
    const/4 v3, 0x0

    iput v3, p0, Lcom/sec/android/app/fm/HwTunningActivity;->i:I

    :goto_0
    iget v3, p0, Lcom/sec/android/app/fm/HwTunningActivity;->i:I

    iget v4, p0, Lcom/sec/android/app/fm/HwTunningActivity;->MAX_REG_COUNT:I

    if-ge v3, v4, :cond_0

    .line 100
    iget-object v4, p0, Lcom/sec/android/app/fm/HwTunningActivity;->mTextLabel:[Landroid/widget/TextView;

    iget v5, p0, Lcom/sec/android/app/fm/HwTunningActivity;->i:I

    iget-object v3, p0, Lcom/sec/android/app/fm/HwTunningActivity;->mTextViewId:[I

    iget v6, p0, Lcom/sec/android/app/fm/HwTunningActivity;->i:I

    aget v3, v3, v6

    invoke-virtual {p0, v3}, Lcom/sec/android/app/fm/HwTunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v4, v5

    .line 101
    iget-object v3, p0, Lcom/sec/android/app/fm/HwTunningActivity;->mTextLabel:[Landroid/widget/TextView;

    iget v4, p0, Lcom/sec/android/app/fm/HwTunningActivity;->i:I

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/sec/android/app/fm/HwTunningActivity;->registerName:[Ljava/lang/String;

    iget v5, p0, Lcom/sec/android/app/fm/HwTunningActivity;->i:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v4, p0, Lcom/sec/android/app/fm/HwTunningActivity;->mEditReg:[Landroid/widget/EditText;

    iget v5, p0, Lcom/sec/android/app/fm/HwTunningActivity;->i:I

    iget-object v3, p0, Lcom/sec/android/app/fm/HwTunningActivity;->mEditTextId:[I

    iget v6, p0, Lcom/sec/android/app/fm/HwTunningActivity;->i:I

    aget v3, v3, v6

    invoke-virtual {p0, v3}, Lcom/sec/android/app/fm/HwTunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    aput-object v3, v4, v5

    .line 99
    iget v3, p0, Lcom/sec/android/app/fm/HwTunningActivity;->i:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/sec/android/app/fm/HwTunningActivity;->i:I

    goto :goto_0

    .line 106
    :cond_0
    const v3, 0x7f070017

    invoke-virtual {p0, v3}, Lcom/sec/android/app/fm/HwTunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 107
    .local v1, layout_rssi_2:Landroid/widget/LinearLayout;
    const v3, 0x7f07001a

    invoke-virtual {p0, v3}, Lcom/sec/android/app/fm/HwTunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 108
    .local v2, layout_snr_2:Landroid/widget/LinearLayout;
    const v3, 0x7f07001d

    invoke-virtual {p0, v3}, Lcom/sec/android/app/fm/HwTunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 110
    .local v0, layout_cnt_2:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 111
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 112
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 115
    return-void
.end method

.method private readThreshold()V
    .locals 7

    .prologue
    .line 135
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/fm/HwTunningActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v4}, Lcom/samsung/media/fmradio/FMPlayer;->getRSSI_th()I

    move-result v1

    .line 136
    .local v1, ret:I
    iget-object v4, p0, Lcom/sec/android/app/fm/HwTunningActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Read : RSSI Threshold : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v4, p0, Lcom/sec/android/app/fm/HwTunningActivity;->mEditReg:[Landroid/widget/EditText;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, 0xa

    invoke-static {v1, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v4, p0, Lcom/sec/android/app/fm/HwTunningActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v4}, Lcom/samsung/media/fmradio/FMPlayer;->getSNR_th()I

    move-result v1

    .line 140
    iget-object v4, p0, Lcom/sec/android/app/fm/HwTunningActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Read : SNR Threshold : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v4, p0, Lcom/sec/android/app/fm/HwTunningActivity;->mEditReg:[Landroid/widget/EditText;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0xa

    invoke-static {v1, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v4, p0, Lcom/sec/android/app/fm/HwTunningActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v4}, Lcom/samsung/media/fmradio/FMPlayer;->getCnt_th()I

    move-result v1

    .line 144
    iget-object v4, p0, Lcom/sec/android/app/fm/HwTunningActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Read : CNT Threshold : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v4, p0, Lcom/sec/android/app/fm/HwTunningActivity;->mEditReg:[Landroid/widget/EditText;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0xa

    invoke-static {v1, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v4, p0, Lcom/sec/android/app/fm/HwTunningActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v4}, Lcom/samsung/media/fmradio/FMPlayer;->GetAF_th()I

    move-result v1

    .line 163
    iget-object v4, p0, Lcom/sec/android/app/fm/HwTunningActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Read : AF Threshold : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v4, p0, Lcom/sec/android/app/fm/HwTunningActivity;->mEditReg:[Landroid/widget/EditText;

    const/4 v5, 0x6

    aget-object v4, v4, v5

    const/16 v5, 0xa

    invoke-static {v1, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v4, p0, Lcom/sec/android/app/fm/HwTunningActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v4}, Lcom/samsung/media/fmradio/FMPlayer;->GetAFValid_th()I

    move-result v1

    .line 167
    iget-object v4, p0, Lcom/sec/android/app/fm/HwTunningActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Read : AFValid Threshold : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v4, p0, Lcom/sec/android/app/fm/HwTunningActivity;->mEditReg:[Landroid/widget/EditText;

    const/4 v5, 0x7

    aget-object v4, v4, v5

    const/16 v5, 0xa

    invoke-static {v1, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v4, p0, Lcom/sec/android/app/fm/HwTunningActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v4}, Lcom/samsung/media/fmradio/FMPlayer;->getCurrentRSSI()J

    move-result-wide v2

    .line 171
    .local v2, retVal:J
    iget-object v4, p0, Lcom/sec/android/app/fm/HwTunningActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Read : CurrentRSSI Threshold : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v4, p0, Lcom/sec/android/app/fm/HwTunningActivity;->mEditReg:[Landroid/widget/EditText;

    const/16 v5, 0x8

    aget-object v4, v4, v5

    long-to-int v5, v2

    const/16 v6, 0xa

    invoke-static {v5, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .end local v1           #ret:I
    .end local v2           #retVal:J
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 178
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 179
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private uiclear()V
    .locals 2

    .prologue
    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/fm/HwTunningActivity;->i:I

    :goto_0
    iget v0, p0, Lcom/sec/android/app/fm/HwTunningActivity;->i:I

    iget v1, p0, Lcom/sec/android/app/fm/HwTunningActivity;->MAX_REG_COUNT:I

    if-ge v0, v1, :cond_2

    .line 120
    iget v0, p0, Lcom/sec/android/app/fm/HwTunningActivity;->i:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/fm/HwTunningActivity;->i:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/fm/HwTunningActivity;->i:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 118
    :cond_0
    :goto_1
    iget v0, p0, Lcom/sec/android/app/fm/HwTunningActivity;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/fm/HwTunningActivity;->i:I

    goto :goto_0

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/fm/HwTunningActivity;->mEditReg:[Landroid/widget/EditText;

    iget v1, p0, Lcom/sec/android/app/fm/HwTunningActivity;->i:I

    aget-object v0, v0, v1

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 129
    :cond_2
    return-void
.end method

.method private writeThreshold()V
    .locals 7

    .prologue
    .line 198
    const/4 v3, 0x0

    iput v3, p0, Lcom/sec/android/app/fm/HwTunningActivity;->i:I

    :goto_0
    iget v3, p0, Lcom/sec/android/app/fm/HwTunningActivity;->i:I

    iget v4, p0, Lcom/sec/android/app/fm/HwTunningActivity;->MAX_REG_COUNT:I

    if-ge v3, v4, :cond_2

    .line 200
    iget v3, p0, Lcom/sec/android/app/fm/HwTunningActivity;->i:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/sec/android/app/fm/HwTunningActivity;->i:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/sec/android/app/fm/HwTunningActivity;->i:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    .line 198
    :cond_0
    :goto_1
    iget v3, p0, Lcom/sec/android/app/fm/HwTunningActivity;->i:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/sec/android/app/fm/HwTunningActivity;->i:I

    goto :goto_0

    .line 204
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/fm/HwTunningActivity;->mEditReg:[Landroid/widget/EditText;

    iget v5, p0, Lcom/sec/android/app/fm/HwTunningActivity;->i:I

    iget-object v3, p0, Lcom/sec/android/app/fm/HwTunningActivity;->mEditTextId:[I

    iget v6, p0, Lcom/sec/android/app/fm/HwTunningActivity;->i:I

    aget v3, v3, v6

    invoke-virtual {p0, v3}, Lcom/sec/android/app/fm/HwTunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    aput-object v3, v4, v5

    .line 206
    iget-object v3, p0, Lcom/sec/android/app/fm/HwTunningActivity;->mEditReg:[Landroid/widget/EditText;

    iget v4, p0, Lcom/sec/android/app/fm/HwTunningActivity;->i:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 207
    iget-object v3, p0, Lcom/sec/android/app/fm/HwTunningActivity;->mEditReg:[Landroid/widget/EditText;

    iget v4, p0, Lcom/sec/android/app/fm/HwTunningActivity;->i:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, ret:Ljava/lang/String;
    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 210
    .local v0, Value:I
    iget v3, p0, Lcom/sec/android/app/fm/HwTunningActivity;->i:I

    packed-switch v3, :pswitch_data_0

    .line 329
    iget-object v3, p0, Lcom/sec/android/app/fm/HwTunningActivity;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Write : No valid data"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 215
    :pswitch_0
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/fm/HwTunningActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v3, v0}, Lcom/samsung/media/fmradio/FMPlayer;->setRSSI_th(I)V

    .line 216
    iget-object v3, p0, Lcom/sec/android/app/fm/HwTunningActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Write : RSSI Threadhold : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 217
    :catch_0
    move-exception v1

    .line 219
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 220
    :catch_1
    move-exception v3

    goto :goto_1

    .line 230
    .end local v1           #e:Ljava/lang/Exception;
    :pswitch_1
    :try_start_2
    iget-object v3, p0, Lcom/sec/android/app/fm/HwTunningActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v3, v0}, Lcom/samsung/media/fmradio/FMPlayer;->setSNR_th(I)V

    .line 231
    iget-object v3, p0, Lcom/sec/android/app/fm/HwTunningActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Write : SNR Threadhold : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 232
    :catch_2
    move-exception v1

    .line 234
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    .line 235
    :catch_3
    move-exception v3

    goto/16 :goto_1

    .line 243
    .end local v1           #e:Ljava/lang/Exception;
    :pswitch_2
    :try_start_4
    iget-object v3, p0, Lcom/sec/android/app/fm/HwTunningActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v3, v0}, Lcom/samsung/media/fmradio/FMPlayer;->setCnt_th(I)V

    .line 244
    iget-object v3, p0, Lcom/sec/android/app/fm/HwTunningActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Write : CNT Threadhold : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_1

    .line 245
    :catch_4
    move-exception v1

    .line 247
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_1

    .line 248
    :catch_5
    move-exception v3

    goto/16 :goto_1

    .line 256
    .end local v1           #e:Ljava/lang/Exception;
    :pswitch_3
    :try_start_6
    iget-object v3, p0, Lcom/sec/android/app/fm/HwTunningActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v3, v0}, Lcom/samsung/media/fmradio/FMPlayer;->setRSSI_th_2(I)V

    .line 257
    iget-object v3, p0, Lcom/sec/android/app/fm/HwTunningActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Write : RSSI_2 Threadhold : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_1

    .line 258
    :catch_6
    move-exception v1

    .line 260
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_1

    .line 261
    :catch_7
    move-exception v3

    goto/16 :goto_1

    .line 269
    .end local v1           #e:Ljava/lang/Exception;
    :pswitch_4
    :try_start_8
    iget-object v3, p0, Lcom/sec/android/app/fm/HwTunningActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v3, v0}, Lcom/samsung/media/fmradio/FMPlayer;->setSNR_th_2(I)V

    .line 270
    iget-object v3, p0, Lcom/sec/android/app/fm/HwTunningActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Write : SNR_2 Threadhold : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto/16 :goto_1

    .line 271
    :catch_8
    move-exception v1

    .line 273
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_9
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    goto/16 :goto_1

    .line 274
    :catch_9
    move-exception v3

    goto/16 :goto_1

    .line 282
    .end local v1           #e:Ljava/lang/Exception;
    :pswitch_5
    :try_start_a
    iget-object v3, p0, Lcom/sec/android/app/fm/HwTunningActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v3, v0}, Lcom/samsung/media/fmradio/FMPlayer;->setCnt_th_2(I)V

    .line 283
    iget-object v3, p0, Lcom/sec/android/app/fm/HwTunningActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Write : CNT_2 Threadhold : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    goto/16 :goto_1

    .line 284
    :catch_a
    move-exception v1

    .line 286
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_b
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    goto/16 :goto_1

    .line 287
    :catch_b
    move-exception v3

    goto/16 :goto_1

    .line 295
    .end local v1           #e:Ljava/lang/Exception;
    :pswitch_6
    :try_start_c
    iget-object v3, p0, Lcom/sec/android/app/fm/HwTunningActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v3, v0}, Lcom/samsung/media/fmradio/FMPlayer;->SetAF_th(I)V

    .line 296
    iget-object v3, p0, Lcom/sec/android/app/fm/HwTunningActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Write : SetAF Threadhold : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    goto/16 :goto_1

    .line 297
    :catch_c
    move-exception v1

    .line 299
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_d
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    goto/16 :goto_1

    .line 300
    :catch_d
    move-exception v3

    goto/16 :goto_1

    .line 308
    .end local v1           #e:Ljava/lang/Exception;
    :pswitch_7
    :try_start_e
    iget-object v3, p0, Lcom/sec/android/app/fm/HwTunningActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v3, v0}, Lcom/samsung/media/fmradio/FMPlayer;->SetAFValid_th(I)V

    .line 309
    iget-object v3, p0, Lcom/sec/android/app/fm/HwTunningActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Write : SetAFValid Threadhold : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_e

    goto/16 :goto_1

    .line 310
    :catch_e
    move-exception v1

    .line 312
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_f
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_f

    goto/16 :goto_1

    .line 313
    :catch_f
    move-exception v3

    goto/16 :goto_1

    .line 334
    .end local v0           #Value:I
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #ret:Ljava/lang/String;
    :cond_2
    return-void

    .line 210
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 349
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 414
    :goto_0
    return-void

    .line 352
    :pswitch_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/fm/HwTunningActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 353
    const-string v1, "Play FMRadio before setting~!!"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 361
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/fm/HwTunningActivity;->writeThreshold()V

    .line 362
    invoke-direct {p0}, Lcom/sec/android/app/fm/HwTunningActivity;->uiclear()V

    .line 363
    invoke-direct {p0}, Lcom/sec/android/app/fm/HwTunningActivity;->readThreshold()V

    .line 365
    const-string v1, "Saved Complete~!!"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 369
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/fm/HwTunningActivity;->uiclear()V

    .line 370
    invoke-direct {p0}, Lcom/sec/android/app/fm/HwTunningActivity;->readThreshold()V

    .line 372
    const-string v1, "Cancel~!!"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 375
    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/fm/HwTunningActivity;->SkipTuning_Value()V

    .line 376
    const-string v1, "Applied value for scan!!"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 381
    :pswitch_3
    :try_start_1
    invoke-static {}, Lcom/sec/android/app/fm/FMRadioFeature;->ForceApply_ThailandFunction()V

    .line 382
    iget-object v1, p0, Lcom/sec/android/app/fm/HwTunningActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v1

    if-nez v1, :cond_1

    .line 383
    const-string v1, "Please turn on Radio"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 392
    :goto_1
    const-string v1, "ForceApply_ThailandFunction"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 386
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/sec/android/app/fm/HwTunningActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/samsung/media/fmradio/FMPlayer;->setChannelSpacing(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 388
    :catch_1
    move-exception v1

    goto :goto_1

    .line 396
    :pswitch_4
    invoke-static {}, Lcom/sec/android/app/fm/FMRadioFeature;->Recovery_ThailandFunction()V

    .line 398
    :try_start_3
    iget-object v1, p0, Lcom/sec/android/app/fm/HwTunningActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v1

    if-nez v1, :cond_2

    .line 399
    const-string v1, "Please turn on Radio"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 407
    :goto_2
    const-string v1, "Recovery_ThailandFunction"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 402
    :cond_2
    :try_start_4
    iget-object v1, p0, Lcom/sec/android/app/fm/HwTunningActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/samsung/media/fmradio/FMPlayer;->setChannelSpacing(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 404
    :catch_2
    move-exception v1

    goto :goto_2

    .line 349
    :pswitch_data_0
    .packed-switch 0x7f070026
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 338
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 340
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/HwTunningActivity;->setContentView(I)V

    .line 342
    invoke-direct {p0}, Lcom/sec/android/app/fm/HwTunningActivity;->initialize()V

    .line 343
    invoke-direct {p0}, Lcom/sec/android/app/fm/HwTunningActivity;->readThreshold()V

    .line 345
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 419
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 420
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 444
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 446
    if-ne v1, v0, :cond_0

    .line 447
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/fm/RssiTestActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 448
    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/HwTunningActivity;->startActivity(Landroid/content/Intent;)V

    .line 487
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 425
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 426
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 427
    const-string v0, "RSSI test"

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 439
    return v2
.end method
