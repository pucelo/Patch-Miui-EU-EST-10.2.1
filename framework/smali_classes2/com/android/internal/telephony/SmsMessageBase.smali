.class public abstract Lcom/android/internal/telephony/SmsMessageBase;
.super Ljava/lang/Object;
.source "SmsMessageBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    }
.end annotation


# instance fields
.field protected mEmailBody:Ljava/lang/String;

.field protected mEmailFrom:Ljava/lang/String;

.field protected mIndexOnIcc:I

.field protected mIsEmail:Z

.field protected mIsMwi:Z

.field protected mMessageBody:Ljava/lang/String;

.field public mMessageRef:I

.field protected mMwiDontStore:Z

.field protected mMwiSense:Z

.field protected mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

.field protected mPdu:[B

.field protected mPseudoSubject:Ljava/lang/String;

.field protected mRecipientAddress:Lcom/android/internal/telephony/SmsAddress;

.field protected mScAddress:Ljava/lang/String;

.field protected mScTimeMillis:J

.field protected mStatusOnIcc:I

.field protected mUserData:[B

.field protected mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mStatusOnIcc:I

    iput v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIndexOnIcc:I

    return-void
.end method

.method public static calcUnicodeEncodingDetails(Ljava/lang/CharSequence;)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .registers 9

    new-instance v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct {v5}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    mul-int/lit8 v3, v6, 0x2

    const/4 v6, 0x3

    iput v6, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    const/16 v6, 0x8c

    if-le v3, v6, :cond_49

    const/16 v0, 0x86

    invoke-static {}, Landroid/telephony/SmsMessage;->hasEmsSupport()Z

    move-result v6

    if-nez v6, :cond_26

    const/16 v6, 0x4a4

    if-gt v3, v6, :cond_26

    const/16 v0, 0x84

    :cond_26
    const/4 v4, 0x0

    const/4 v1, 0x0

    :goto_28
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v4, v6, :cond_46

    invoke-static {v4, v0, p0}, Lcom/android/internal/telephony/SmsMessageBase;->findNextUnicodePosition(IILjava/lang/CharSequence;)I

    move-result v2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ne v2, v6, :cond_42

    div-int/lit8 v6, v0, 0x2

    add-int/2addr v6, v4

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    :cond_42
    move v4, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_46
    iput v1, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    :goto_48
    return-object v5

    :cond_49
    const/4 v6, 0x1

    iput v6, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    rsub-int v6, v3, 0x8c

    div-int/lit8 v6, v6, 0x2

    iput v6, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_48
.end method

.method public static findNextUnicodePosition(IILjava/lang/CharSequence;)I
    .registers 8

    div-int/lit8 v3, p1, 0x2

    add-int/2addr v3, p0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_46

    invoke-static {}, Ljava/text/BreakIterator;->getCharacterInstance()Ljava/text/BreakIterator;

    move-result-object v0

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/text/BreakIterator;->isBoundary(I)Z

    move-result v3

    if-nez v3, :cond_46

    invoke-virtual {v0, v2}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v1

    :goto_26
    add-int/lit8 v3, v1, 0x4

    if-gt v3, v2, :cond_43

    invoke-static {p2, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    invoke-static {v3}, Landroid/text/Emoji;->isRegionalIndicatorSymbol(I)Z

    move-result v3

    if-eqz v3, :cond_43

    add-int/lit8 v3, v1, 0x2

    invoke-static {p2, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    invoke-static {v3}, Landroid/text/Emoji;->isRegionalIndicatorSymbol(I)Z

    move-result v3

    if-eqz v3, :cond_43

    add-int/lit8 v1, v1, 0x4

    goto :goto_26

    :cond_43
    if-le v1, p0, :cond_47

    move v2, v1

    :cond_46
    :goto_46
    return v2

    :cond_47
    add-int/lit8 v3, v2, -0x1

    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_46

    add-int/lit8 v2, v2, -0x1

    goto :goto_46
.end method


# virtual methods
.method protected extractEmailAddressFromMessageBody()V
    .registers 5

    const/4 v3, 0x2

    iget-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    const-string/jumbo v2, "( /)|( )"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-ge v1, v3, :cond_e

    return-void

    :cond_e
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mEmailFrom:Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mEmailBody:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mEmailFrom:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIsEmail:Z

    return-void
.end method

.method public getDisplayMessageBody()Ljava/lang/String;
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIsEmail:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mEmailBody:Ljava/lang/String;

    return-object v0

    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOriginatingAddress()Ljava/lang/String;
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIsEmail:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mEmailFrom:Ljava/lang/String;

    return-object v0

    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmailBody()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mEmailBody:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailFrom()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mEmailFrom:Ljava/lang/String;

    return-object v0
.end method

.method public getEncodingType()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getIndexOnIcc()I
    .registers 2

    iget v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIndexOnIcc:I

    return v0
.end method

.method public getMessageBody()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;
.end method

.method public getOriginatingAddress()Ljava/lang/String;
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsAddress;->getAddressString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPdu()[B
    .registers 2

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mPdu:[B

    return-object v0
.end method

.method public abstract getProtocolIdentifier()I
.end method

.method public getPseudoSubject()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mPseudoSubject:Ljava/lang/String;

    if-nez v0, :cond_8

    const-string/jumbo v0, ""

    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mPseudoSubject:Ljava/lang/String;

    goto :goto_7
.end method

.method public getRecipientAddress()Ljava/lang/String;
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mRecipientAddress:Lcom/android/internal/telephony/SmsAddress;

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mRecipientAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsAddress;->getAddressString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceCenterAddress()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mScAddress:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getStatus()I
.end method

.method public getStatusOnIcc()I
    .registers 2

    iget v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mStatusOnIcc:I

    return v0
.end method

.method public getTimestampMillis()J
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mScTimeMillis:J

    return-wide v0
.end method

.method public getUserData()[B
    .registers 2

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mUserData:[B

    return-object v0
.end method

.method public getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    return-object v0
.end method

.method public abstract isCphsMwiMessage()Z
.end method

.method public isEmail()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIsEmail:Z

    return v0
.end method

.method public abstract isMWIClearMessage()Z
.end method

.method public abstract isMWISetMessage()Z
.end method

.method public abstract isMwiDontStore()Z
.end method

.method public abstract isReplace()Z
.end method

.method public abstract isReplyPathPresent()Z
.end method

.method public abstract isStatusReportMessage()Z
.end method

.method protected parseMessageBody()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsAddress;->couldBeEmailGateway()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsMessageBase;->extractEmailAddressFromMessageBody()V

    :cond_f
    return-void
.end method
