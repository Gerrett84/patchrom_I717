.class public Lcom/sec/android/app/fm/IntennaTestActivity;
.super Landroid/app/Activity;
.source "IntennaTestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field LOG_TAG:Ljava/lang/String;

.field private MAX_REG_COUNT:I

.field private current_rssi:I

.field private doUpdate:Ljava/lang/Runnable;

.field private factory_rssi:I

.field private handler:Landroid/os/Handler;

.field public mAudioManager:Landroid/media/AudioManager;

.field private mCancelButton:Landroid/widget/Button;

.field private mEditReg:[Landroid/widget/EditText;

.field mEditTextId:[I

.field private mOkButton:Landroid/widget/Button;

.field public mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

.field private mTextLabel:[Landroid/widget/TextView;

.field private mTextResult:Landroid/widget/TextView;

.field mTextViewId:[I

.field registerName:[Ljava/lang/String;

.field private test_frequency:J


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    const-string v0, "### IntennaTestActivity ###"

    iput-object v0, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->LOG_TAG:Ljava/lang/String;

    .line 31
    iput v3, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->MAX_REG_COUNT:I

    .line 33
    iget v0, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->MAX_REG_COUNT:I

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->mTextLabel:[Landroid/widget/TextView;

    .line 35
    iget v0, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->MAX_REG_COUNT:I

    new-array v0, v0, [Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->mEditReg:[Landroid/widget/EditText;

    .line 39
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "CurrentFreq(Mhz)"

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-string v2, "FactoryRSSI(dBm)"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "CurrentRSSI(dBm)"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->registerName:[Ljava/lang/String;

    .line 43
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->mTextViewId:[I

    .line 47
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->mEditTextId:[I

    .line 53
    const-wide/32 v0, 0x19258

    iput-wide v0, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->test_frequency:J

    .line 57
    iput v4, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->current_rssi:I

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->handler:Landroid/os/Handler;

    .line 277
    new-instance v0, Lcom/sec/android/app/fm/IntennaTestActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/IntennaTestActivity$1;-><init>(Lcom/sec/android/app/fm/IntennaTestActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->doUpdate:Ljava/lang/Runnable;

    return-void

    .line 43
    nop

    :array_0
    .array-data 0x4
        0x2bt 0x0t 0x7t 0x7ft
        0x2dt 0x0t 0x7t 0x7ft
        0x2ft 0x0t 0x7t 0x7ft
    .end array-data

    .line 47
    :array_1
    .array-data 0x4
        0x2ct 0x0t 0x7t 0x7ft
        0x2et 0x0t 0x7t 0x7ft
        0x30t 0x0t 0x7t 0x7ft
    .end array-data
.end method

.method private UpdateIntennaTest()V
    .locals 2

    .prologue
    .line 203
    iget v0, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->current_rssi:I

    iget v1, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->factory_rssi:I

    if-lt v0, v1, :cond_0

    .line 204
    iget-object v0, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "checkIntennaRssi :: PASS!!!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->mTextResult:Landroid/widget/TextView;

    const-string v1, "PASS"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v0, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->mTextResult:Landroid/widget/TextView;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 213
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "checkIntennaRssi :: FAIL!!!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->mTextResult:Landroid/widget/TextView;

    const-string v1, "FAIL"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v0, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->mTextResult:Landroid/widget/TextView;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/app/fm/IntennaTestActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/sec/android/app/fm/IntennaTestActivity;->readThreshold(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/fm/IntennaTestActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/sec/android/app/fm/IntennaTestActivity;->UpdateIntennaTest()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/fm/IntennaTestActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->doUpdate:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/fm/IntennaTestActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private initialize()V
    .locals 3

    .prologue
    .line 80
    const v1, 0x7f070031

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/IntennaTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->mOkButton:Landroid/widget/Button;

    .line 81
    iget-object v1, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v1, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->mOkButton:Landroid/widget/Button;

    const-string v2, "Apply"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 85
    const v1, 0x7f070032

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/IntennaTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->mCancelButton:Landroid/widget/Button;

    .line 86
    iget-object v1, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v1, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->mCancelButton:Landroid/widget/Button;

    const-string v2, "Cancel"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 90
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->MAX_REG_COUNT:I

    if-ge v0, v1, :cond_0

    .line 91
    iget-object v2, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->mTextLabel:[Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->mTextViewId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/IntennaTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v2, v0

    .line 92
    iget-object v1, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->mTextLabel:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->registerName:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v2, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->mEditReg:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->mEditTextId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/IntennaTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    aput-object v1, v2, v0

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_0
    const v1, 0x7f070033

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/IntennaTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->mTextResult:Landroid/widget/TextView;

    .line 98
    iget-object v1, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->mTextResult:Landroid/widget/TextView;

    const-string v2, "Ready"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v1, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->mTextResult:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 101
    const-string v1, "FMPlayer"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/IntennaTestActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/media/fmradio/FMPlayer;

    iput-object v1, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    .line 102
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/IntennaTestActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 104
    invoke-virtual {p0}, Lcom/sec/android/app/fm/IntennaTestActivity;->GetFactoryRssi()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->factory_rssi:I

    .line 105
    return-void
.end method

.method private readThreshold(I)V
    .locals 7
    .parameter "index"

    .prologue
    const/16 v6, 0xa

    .line 137
    iget-object v3, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    if-nez v3, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 143
    :pswitch_0
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v3}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 144
    iget-object v3, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v3}, Lcom/samsung/media/fmradio/FMPlayer;->getCurrentChannel()J

    move-result-wide v1

    .line 145
    .local v1, freq:J
    iget-object v3, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read : Frequency : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v3, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->mEditReg:[Landroid/widget/EditText;

    aget-object v3, v3, p1

    long-to-int v4, v1

    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 148
    .end local v1           #freq:J
    :catch_0
    move-exception v0

    .line 149
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 153
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_1
    iget-object v3, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read : FactoryRSSI : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->factory_rssi:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v3, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->mEditReg:[Landroid/widget/EditText;

    aget-object v3, v3, p1

    iget v4, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->factory_rssi:I

    invoke-static {v4, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 159
    :pswitch_2
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v3}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 160
    iget-object v3, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v3}, Lcom/samsung/media/fmradio/FMPlayer;->getCurrentRSSI()J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->current_rssi:I

    .line 161
    iget-object v3, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read : CurrentRSSI : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->current_rssi:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v3, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->mEditReg:[Landroid/widget/EditText;

    aget-object v3, v3, p1

    iget v4, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->current_rssi:I

    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 164
    :catch_1
    move-exception v0

    .line 165
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setFreq()V
    .locals 5

    .prologue
    .line 108
    iget-object v1, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    if-nez v1, :cond_0

    .line 128
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->LOG_TAG:Ljava/lang/String;

    const-string v2, "setFreq "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v1

    if-nez v1, :cond_1

    .line 116
    iget-object v1, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayer;->on()Z

    .line 118
    iget-object v1, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->LOG_TAG:Ljava/lang/String;

    const-string v2, "setFreq :: set volume 7 "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v1, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->mAudioManager:Landroid/media/AudioManager;

    const/16 v2, 0xa

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 120
    iget-object v1, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/media/fmradio/FMPlayer;->setSpeakerOn(Z)Z

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    iget-wide v2, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->test_frequency:J

    invoke-virtual {v1, v2, v3}, Lcom/samsung/media/fmradio/FMPlayer;->tune(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private uiclear()V
    .locals 3

    .prologue
    .line 131
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->MAX_REG_COUNT:I

    if-ge v0, v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->mEditReg:[Landroid/widget/EditText;

    aget-object v1, v1, v0

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    :cond_0
    return-void
.end method

.method private writeThreshold(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 175
    iget v2, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->MAX_REG_COUNT:I

    if-lt p1, v2, :cond_1

    .line 200
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 178
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->mEditReg:[Landroid/widget/EditText;

    iget-object v2, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->mEditTextId:[I

    aget v2, v2, p1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/IntennaTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    aput-object v2, v3, p1

    .line 180
    iget-object v2, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->mEditReg:[Landroid/widget/EditText;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 187
    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->mEditReg:[Landroid/widget/EditText;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, ret:Ljava/lang/String;
    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 190
    .local v0, Value:I
    iget-object v2, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeThreshold: FactoryRSSI="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iput v0, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->factory_rssi:I

    .line 193
    iget v2, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->factory_rssi:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/IntennaTestActivity;->SetFactoryRssi(I)V

    goto :goto_0

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public GetFactoryRssi()I
    .locals 4

    .prologue
    .line 62
    const-string v1, "SettingsPreference"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/fm/IntennaTestActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "factoryrssi"

    const/16 v3, -0x46

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 65
    .local v0, factory_rssi:I
    iget-object v1, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetFactoryRssi :: rssi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return v0
.end method

.method public SetFactoryRssi(I)V
    .locals 4
    .parameter "rssi"

    .prologue
    .line 70
    const-string v1, "SettingsPreference"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/fm/IntennaTestActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 73
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "factoryrssi"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 74
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 75
    iget-object v1, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetFactoryRssi :: rssi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 217
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 237
    :goto_0
    return-void

    .line 219
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/sec/android/app/fm/IntennaTestActivity;->writeThreshold(I)V

    .line 220
    invoke-direct {p0}, Lcom/sec/android/app/fm/IntennaTestActivity;->uiclear()V

    .line 221
    invoke-direct {p0, v1}, Lcom/sec/android/app/fm/IntennaTestActivity;->readThreshold(I)V

    .line 222
    invoke-direct {p0, v2}, Lcom/sec/android/app/fm/IntennaTestActivity;->readThreshold(I)V

    .line 224
    const-string v0, "Apply Complete~!!"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 227
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/fm/IntennaTestActivity;->uiclear()V

    .line 228
    invoke-direct {p0, v1}, Lcom/sec/android/app/fm/IntennaTestActivity;->readThreshold(I)V

    .line 229
    invoke-direct {p0, v2}, Lcom/sec/android/app/fm/IntennaTestActivity;->readThreshold(I)V

    .line 231
    const-string v0, "Cancel~!!"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x7f070031
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 241
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 243
    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/IntennaTestActivity;->setContentView(I)V

    .line 245
    invoke-direct {p0}, Lcom/sec/android/app/fm/IntennaTestActivity;->initialize()V

    .line 246
    invoke-direct {p0}, Lcom/sec/android/app/fm/IntennaTestActivity;->setFreq()V

    .line 248
    invoke-direct {p0}, Lcom/sec/android/app/fm/IntennaTestActivity;->uiclear()V

    .line 249
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/IntennaTestActivity;->readThreshold(I)V

    .line 250
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/IntennaTestActivity;->readThreshold(I)V

    .line 252
    iget-object v0, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->doUpdate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 253
    iget-object v0, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->doUpdate:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 254
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 258
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 259
    iget-object v1, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onDestroy"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v1, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->doUpdate:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 263
    iget-object v1, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    if-nez v1, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 269
    iget-object v1, p0, Lcom/sec/android/app/fm/IntennaTestActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayer;->off()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
