.class public Landroid/media/AudioAttributes$Builder;
.super Ljava/lang/Object;
.source "AudioAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private mContentType:I

.field private mFlags:I

.field private mSource:I

.field private mTags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUsage:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Landroid/media/AudioAttributes;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    invoke-static {p1}, Landroid/media/AudioAttributes;->-get3(Landroid/media/AudioAttributes;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    invoke-static {p1}, Landroid/media/AudioAttributes;->-get0(Landroid/media/AudioAttributes;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    invoke-static {p1}, Landroid/media/AudioAttributes;->-get1(Landroid/media/AudioAttributes;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    invoke-static {p1}, Landroid/media/AudioAttributes;->-get2(Landroid/media/AudioAttributes;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    iput-object v0, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public addBundle(Landroid/os/Bundle;)Landroid/media/AudioAttributes$Builder;
    .registers 4

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal null bundle"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iget-object v0, p0, Landroid/media/AudioAttributes$Builder;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_17

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/media/AudioAttributes$Builder;->mBundle:Landroid/os/Bundle;

    :goto_16
    return-object p0

    :cond_17
    iget-object v0, p0, Landroid/media/AudioAttributes$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_16
.end method

.method public addTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;
    .registers 3

    iget-object v0, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Landroid/media/AudioAttributes;
    .registers 4

    const/4 v1, 0x0

    new-instance v0, Landroid/media/AudioAttributes;

    invoke-direct {v0, v1}, Landroid/media/AudioAttributes;-><init>(Landroid/media/AudioAttributes;)V

    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-set1(Landroid/media/AudioAttributes;I)I

    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-set6(Landroid/media/AudioAttributes;I)I

    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-set4(Landroid/media/AudioAttributes;I)I

    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-set2(Landroid/media/AudioAttributes;I)I

    iget-object v1, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-set5(Landroid/media/AudioAttributes;Ljava/util/HashSet;)Ljava/util/HashSet;

    const-string/jumbo v1, ";"

    iget-object v2, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-set3(Landroid/media/AudioAttributes;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Landroid/media/AudioAttributes$Builder;->mBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_3f

    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Landroid/media/AudioAttributes$Builder;->mBundle:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-set0(Landroid/media/AudioAttributes;Landroid/os/Bundle;)Landroid/os/Bundle;

    :cond_3f
    return-object v0
.end method

.method public replaceFlags(I)Landroid/media/AudioAttributes$Builder;
    .registers 3

    const v0, -0x7ffffc01

    and-int/2addr v0, p1

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    return-object p0
.end method

.method public setCapturePreset(I)Landroid/media/AudioAttributes$Builder;
    .registers 5

    packed-switch p1, :pswitch_data_28

    :pswitch_3
    const-string/jumbo v0, "AudioAttributes"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid capture preset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " for AudioAttributes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_24
    return-object p0

    :pswitch_25
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    goto :goto_24

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_3
        :pswitch_25
    .end packed-switch
.end method

.method public setContentType(I)Landroid/media/AudioAttributes$Builder;
    .registers 3

    packed-switch p1, :pswitch_data_a

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    :goto_6
    return-object p0

    :pswitch_7
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    goto :goto_6

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public setFlags(I)Landroid/media/AudioAttributes$Builder;
    .registers 3

    const v0, -0x7ffffc01

    and-int/2addr p1, v0

    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    return-object p0
.end method

.method public setInternalCapturePreset(I)Landroid/media/AudioAttributes$Builder;
    .registers 3

    const/16 v0, 0x7cf

    if-eq p1, v0, :cond_8

    const/16 v0, 0x8

    if-ne p1, v0, :cond_b

    :cond_8
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    :goto_a
    return-object p0

    :cond_b
    const/16 v0, 0x7ce

    if-eq p1, v0, :cond_8

    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->setCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    goto :goto_a
.end method

.method public setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x4

    packed-switch p1, :pswitch_data_58

    const-string/jumbo v0, "AudioAttributes"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " for AudioAttributes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_26
    invoke-static {p1}, Landroid/media/AudioAttributes;->-wrap0(I)I

    move-result v0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    return-object p0

    :pswitch_2d
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    goto :goto_26

    :pswitch_30
    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    :pswitch_36
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    goto :goto_26

    :pswitch_39
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    goto :goto_26

    :pswitch_3c
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    goto :goto_26

    :pswitch_40
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    goto :goto_26

    :pswitch_43
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    goto :goto_26

    :pswitch_46
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    goto :goto_26

    :pswitch_4f
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    goto :goto_26

    :pswitch_52
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    goto :goto_26

    :pswitch_55
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    goto :goto_26

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_36
        :pswitch_39
        :pswitch_3c
        :pswitch_40
        :pswitch_43
        :pswitch_46
        :pswitch_30
        :pswitch_4f
        :pswitch_52
        :pswitch_55
    .end packed-switch
.end method

.method public setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;
    .registers 4

    const/16 v0, 0xa

    if-ne p1, v0, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "STREAM_ACCESSIBILITY is not a legacy stream type that was used for audio playback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setUsage(I)Landroid/media/AudioAttributes$Builder;
    .registers 3

    packed-switch p1, :pswitch_data_a

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    :goto_6
    return-object p0

    :pswitch_7
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    goto :goto_6

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method
