.class public Lcom/sec/android/app/fm/SoftMuteTestSTEActivity;
.super Landroid/app/Activity;
.source "SoftMuteTestSTEActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private Attenuation:I

.field LOG_TAG:Ljava/lang/String;

.field private Max_RSSI:I

.field private Min_RSSI:I

.field private bCurrentSoftMuteMode:Z

.field private bSoftmuteOnOff:Z

.field private mApplyButton:Landroid/widget/Button;

.field private mAttenuation:Landroid/widget/EditText;

.field private mMax_RSSI:Landroid/widget/EditText;

.field private mMin_RSSI:Landroid/widget/EditText;

.field mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

.field private msoftmute:Landroid/widget/Switch;

.field softmute_value:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/fm/SoftMuteTestSTEActivity;->bSoftmuteOnOff:Z

    iput-boolean v1, p0, Lcom/sec/android/app/fm/SoftMuteTestSTEActivity;->bCurrentSoftMuteMode:Z

    .line 26
    const-string v0, "### SoftmuteTestSTEActivity ###"

    iput-object v0, p0, Lcom/sec/android/app/fm/SoftMuteTestSTEActivity;->LOG_TAG:Ljava/lang/String;

    .line 98
    iput v1, p0, Lcom/sec/android/app/fm/SoftMuteTestSTEActivity;->softmute_value:I

    return-void
.end method

.method private initialsetup()V
    .locals 4

    .prologue
    .line 42
    const-string v2, "FMPlayer"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/SoftMuteTestSTEActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/media/fmradio/FMPlayer;

    iput-object v2, p0, Lcom/sec/android/app/fm/SoftMuteTestSTEActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    .line 44
    invoke-direct {p0}, Lcom/sec/android/app/fm/SoftMuteTestSTEActivity;->inittextview()V

    .line 45
    const v2, 0x7f0700ca

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/SoftMuteTestSTEActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/sec/android/app/fm/SoftMuteTestSTEActivity;->msoftmute:Landroid/widget/Switch;

    .line 47
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/fm/SoftMuteTestSTEActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v2}, Lcom/samsung/media/fmradio/FMPlayer;->getSoftMuteMode()Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/fm/SoftMuteTestSTEActivity;->bCurrentSoftMuteMode:Z
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/fm/SoftMuteTestSTEActivity;->msoftmute:Landroid/widget/Switch;

    iget-boolean v3, p0, Lcom/sec/android/app/fm/SoftMuteTestSTEActivity;->bCurrentSoftMuteMode:Z

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 53
    iget-object v2, p0, Lcom/sec/android/app/fm/SoftMuteTestSTEActivity;->msoftmute:Landroid/widget/Switch;

    invoke-virtual {v2, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 55
    const v2, 0x7f0700cc

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/SoftMuteTestSTEActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/sec/android/app/fm/SoftMuteTestSTEActivity;->mMin_RSSI:Landroid/widget/EditText;

    .line 56
    const v2, 0x7f0700ce

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/SoftMuteTestSTEActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/sec/android/app/fm/SoftMuteTestSTEActivity;->mMax_RSSI:Landroid/widget/EditText;

    .line 57
    const v2, 0x7f0700d0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/SoftMuteTestSTEActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/sec/android/app/fm/SoftMuteTestSTEActivity;->mAttenuation:Landroid/widget/EditText;

    .line 59
    const-string v0, "0"

    .line 60
    .local v0, default_value:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/fm/SoftMuteTestSTEActivity;->mMin_RSSI:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v2, p0, Lcom/sec/android/app/fm/SoftMuteTestSTEActivity;->mMax_RSSI:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v2, p0, Lcom/sec/android/app/fm/SoftMuteTestSTEActivity;->mAttenuation:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 64
    const v2, 0x7f0700d1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/SoftMuteTestSTEActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/sec/android/app/fm/SoftMuteTestSTEActivity;->mApplyButton:Landroid/widget/Button;

    .line 65
    iget-object v2, p0, Lcom/sec/android/app/fm/SoftMuteTestSTEActivity;->mApplyButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    return-void

    .line 48
    .end local v0           #default_value:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 50
    .local v1, e:Lcom/samsung/media/fmradio/FMPlayerException;
    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V

    goto :goto_0
.end method

.method private inittextview()V
    .locals 7

    .prologue
    .line 73
    const v6, 0x7f0700c8

    invoke-virtual {p0, v6}, Lcom/sec/android/app/fm/SoftMuteTestSTEActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 74
    .local v5, mtitletextview:Landroid/widget/TextView;
    const v6, 0x7f0700c9

    invoke-virtual {p0, v6}, Lcom/sec/android/app/fm/SoftMuteTestSTEActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 75
    .local v4, msoftmuteswitchonofftextview:Landroid/widget/TextView;
    const v6, 0x7f0700cb

    invoke-virtual {p0, v6}, Lcom/sec/android/app/fm/SoftMuteTestSTEActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 76
    .local v3, mminrssitextview:Landroid/widget/TextView;
    const v6, 0x7f0700cd

    invoke-virtual {p0, v6}, Lcom/sec/android/app/fm/SoftMuteTestSTEActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 77
    .local v2, mmaxrssitextview:Landroid/widget/TextView;
    const v6, 0x7f0700cf

    invoke-virtual {p0, v6}, Lcom/sec/android/app/fm/SoftMuteTestSTEActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 78
    .local v1, mattenuationtextview:Landroid/widget/TextView;
    const v6, 0x7f0700d1

    invoke-virtual {p0, v6}, Lcom/sec/android/app/fm/SoftMuteTestSTEActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 80
    .local v0, mapplysoftmuteforste:Landroid/widget/Button;
    const-string v6, "SoftMuteTest For STE Radio Chip"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    const-string v6, "SoftMute On/Off"

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    const-string v6, "min_RSSI"

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    const-string v6, "max_RSSI"

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    const-string v6, "Attenuation"

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    const-string v6, "Apply Values"

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 89
    return-void
.end method

.method private setsoftmuteValue()V
    .locals 5

    .prologue
    const/16 v2, 0xa

    .line 101
    iget-object v1, p0, Lcom/sec/android/app/fm/SoftMuteTestSTEActivity;->mMin_RSSI:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/fm/SoftMuteTestSTEActivity;->Min_RSSI:I

    .line 102
    iget-object v1, p0, Lcom/sec/android/app/fm/SoftMuteTestSTEActivity;->mMax_RSSI:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/fm/SoftMuteTestSTEActivity;->Max_RSSI:I

    .line 103
    iget-object v1, p0, Lcom/sec/android/app/fm/SoftMuteTestSTEActivity;->mAttenuation:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/fm/SoftMuteTestSTEActivity;->Attenuation:I

    .line 104
    iget-object v1, p0, Lcom/sec/android/app/fm/SoftMuteTestSTEActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setsoftmuteValue MODE, Min_MAX RSSI, Attenuation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/app/fm/SoftMuteTestSTEActivity;->bSoftmuteOnOff:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/fm/SoftMuteTestSTEActivity;->Min_RSSI:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/fm/SoftMuteTestSTEActivity;->Max_RSSI:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/fm/SoftMuteTestSTEActivity;->softmute_value:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/fm/SoftMuteTestSTEActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    iget-boolean v2, p0, Lcom/sec/android/app/fm/SoftMuteTestSTEActivity;->bSoftmuteOnOff:Z

    invoke-virtual {v1, v2}, Lcom/samsung/media/fmradio/FMPlayer;->setSoftmute(Z)V

    .line 108
    iget-object v1, p0, Lcom/sec/android/app/fm/SoftMuteTestSTEActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    iget v2, p0, Lcom/sec/android/app/fm/SoftMuteTestSTEActivity;->Min_RSSI:I

    iget v3, p0, Lcom/sec/android/app/fm/SoftMuteTestSTEActivity;->Max_RSSI:I

    iget v4, p0, Lcom/sec/android/app/fm/SoftMuteTestSTEActivity;->Attenuation:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/media/fmradio/FMPlayer;->setSoftMuteControl(III)V
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    const-string v1, "Apply Complete !!"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 114
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 111
    .local v0, e:Lcom/samsung/media/fmradio/FMPlayerException;
    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sec/android/app/fm/SoftMuteTestSTEActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iput-boolean p2, p0, Lcom/sec/android/app/fm/SoftMuteTestSTEActivity;->bSoftmuteOnOff:Z

    .line 121
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/app/fm/SoftMuteTestSTEActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onClick "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-direct {p0}, Lcom/sec/android/app/fm/SoftMuteTestSTEActivity;->setsoftmuteValue()V

    .line 96
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 126
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 127
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/SoftMuteTestSTEActivity;->setContentView(I)V

    .line 34
    invoke-direct {p0}, Lcom/sec/android/app/fm/SoftMuteTestSTEActivity;->initialsetup()V

    .line 38
    return-void
.end method
