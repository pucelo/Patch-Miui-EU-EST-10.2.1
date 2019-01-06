.class public final Landroid/speech/tts/SynthesisRequest;
.super Ljava/lang/Object;
.source "SynthesisRequest.java"


# instance fields
.field private mCallerUid:I

.field private mCountry:Ljava/lang/String;

.field private mLanguage:Ljava/lang/String;

.field private final mParams:Landroid/os/Bundle;

.field private mPitch:I

.field private mSpeechRate:I

.field private final mText:Ljava/lang/CharSequence;

.field private mVariant:Ljava/lang/String;

.field private mVoiceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/os/Bundle;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/speech/tts/SynthesisRequest;->mText:Ljava/lang/CharSequence;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/speech/tts/SynthesisRequest;->mParams:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/speech/tts/SynthesisRequest;->mText:Ljava/lang/CharSequence;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/speech/tts/SynthesisRequest;->mParams:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getCallerUid()I
    .registers 2

    iget v0, p0, Landroid/speech/tts/SynthesisRequest;->mCallerUid:I

    return v0
.end method

.method public getCharSequenceText()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/speech/tts/SynthesisRequest;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/speech/tts/SynthesisRequest;->mCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/speech/tts/SynthesisRequest;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/speech/tts/SynthesisRequest;->mParams:Landroid/os/Bundle;

    return-object v0
.end method

.method public getPitch()I
    .registers 2

    iget v0, p0, Landroid/speech/tts/SynthesisRequest;->mPitch:I

    return v0
.end method

.method public getSpeechRate()I
    .registers 2

    iget v0, p0, Landroid/speech/tts/SynthesisRequest;->mSpeechRate:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/speech/tts/SynthesisRequest;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVariant()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/speech/tts/SynthesisRequest;->mVariant:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/speech/tts/SynthesisRequest;->mVoiceName:Ljava/lang/String;

    return-object v0
.end method

.method setCallerUid(I)V
    .registers 2

    iput p1, p0, Landroid/speech/tts/SynthesisRequest;->mCallerUid:I

    return-void
.end method

.method setLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Landroid/speech/tts/SynthesisRequest;->mLanguage:Ljava/lang/String;

    iput-object p2, p0, Landroid/speech/tts/SynthesisRequest;->mCountry:Ljava/lang/String;

    iput-object p3, p0, Landroid/speech/tts/SynthesisRequest;->mVariant:Ljava/lang/String;

    return-void
.end method

.method setPitch(I)V
    .registers 2

    iput p1, p0, Landroid/speech/tts/SynthesisRequest;->mPitch:I

    return-void
.end method

.method setSpeechRate(I)V
    .registers 2

    iput p1, p0, Landroid/speech/tts/SynthesisRequest;->mSpeechRate:I

    return-void
.end method

.method setVoiceName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/speech/tts/SynthesisRequest;->mVoiceName:Ljava/lang/String;

    return-void
.end method