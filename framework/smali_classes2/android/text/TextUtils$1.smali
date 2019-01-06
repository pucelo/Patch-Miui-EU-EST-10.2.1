.class final Landroid/text/TextUtils$1;
.super Ljava/lang/Object;
.source "TextUtils.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Ljava/lang/CharSequence;
    .registers 8

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_c

    return-object v3

    :cond_c
    const/4 v3, 0x1

    if-ne v0, v3, :cond_10

    return-object v2

    :cond_10
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    :goto_15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_1c

    return-object v1

    :cond_1c
    packed-switch v0, :pswitch_data_134

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "bogus span encoding "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_39
    new-instance v3, Landroid/text/style/AlignmentSpan$Standard;

    invoke-direct {v3, p1}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->-wrap0(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto :goto_15

    :pswitch_42
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->-wrap0(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto :goto_15

    :pswitch_4b
    new-instance v3, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v3, p1}, Landroid/text/style/RelativeSizeSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->-wrap0(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto :goto_15

    :pswitch_54
    new-instance v3, Landroid/text/style/ScaleXSpan;

    invoke-direct {v3, p1}, Landroid/text/style/ScaleXSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->-wrap0(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto :goto_15

    :pswitch_5d
    new-instance v3, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v3, p1}, Landroid/text/style/StrikethroughSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->-wrap0(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto :goto_15

    :pswitch_66
    new-instance v3, Landroid/text/style/UnderlineSpan;

    invoke-direct {v3, p1}, Landroid/text/style/UnderlineSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->-wrap0(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto :goto_15

    :pswitch_6f
    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, p1}, Landroid/text/style/StyleSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->-wrap0(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto :goto_15

    :pswitch_78
    new-instance v3, Landroid/text/style/BulletSpan;

    invoke-direct {v3, p1}, Landroid/text/style/BulletSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->-wrap0(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto :goto_15

    :pswitch_81
    new-instance v3, Landroid/text/style/QuoteSpan;

    invoke-direct {v3, p1}, Landroid/text/style/QuoteSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->-wrap0(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto :goto_15

    :pswitch_8a
    new-instance v3, Landroid/text/style/LeadingMarginSpan$Standard;

    invoke-direct {v3, p1}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->-wrap0(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto :goto_15

    :pswitch_93
    new-instance v3, Landroid/text/style/URLSpan;

    invoke-direct {v3, p1}, Landroid/text/style/URLSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->-wrap0(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_9d
    new-instance v3, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v3, p1}, Landroid/text/style/BackgroundColorSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->-wrap0(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_a7
    new-instance v3, Landroid/text/style/TypefaceSpan;

    invoke-direct {v3, p1}, Landroid/text/style/TypefaceSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->-wrap0(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_b1
    new-instance v3, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v3, p1}, Landroid/text/style/SuperscriptSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->-wrap0(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_bb
    new-instance v3, Landroid/text/style/SubscriptSpan;

    invoke-direct {v3, p1}, Landroid/text/style/SubscriptSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->-wrap0(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_c5
    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v3, p1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->-wrap0(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_cf
    new-instance v3, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {v3, p1}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->-wrap0(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_d9
    new-instance v3, Landroid/text/Annotation;

    invoke-direct {v3, p1}, Landroid/text/Annotation;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->-wrap0(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_e3
    new-instance v3, Landroid/text/style/SuggestionSpan;

    invoke-direct {v3, p1}, Landroid/text/style/SuggestionSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->-wrap0(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_ed
    new-instance v3, Landroid/text/style/SpellCheckSpan;

    invoke-direct {v3, p1}, Landroid/text/style/SpellCheckSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->-wrap0(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_f7
    new-instance v3, Landroid/text/style/SuggestionRangeSpan;

    invoke-direct {v3, p1}, Landroid/text/style/SuggestionRangeSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->-wrap0(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_101
    new-instance v3, Landroid/text/style/EasyEditSpan;

    invoke-direct {v3, p1}, Landroid/text/style/EasyEditSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->-wrap0(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_10b
    new-instance v3, Landroid/text/style/LocaleSpan;

    invoke-direct {v3, p1}, Landroid/text/style/LocaleSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->-wrap0(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_115
    new-instance v3, Landroid/text/style/TtsSpan;

    invoke-direct {v3, p1}, Landroid/text/style/TtsSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->-wrap0(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_11f
    new-instance v3, Landroid/text/style/AccessibilityClickableSpan;

    invoke-direct {v3, p1}, Landroid/text/style/AccessibilityClickableSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->-wrap0(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_129
    new-instance v3, Landroid/text/style/AccessibilityURLSpan;

    invoke-direct {v3, p1}, Landroid/text/style/AccessibilityURLSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v1, v3}, Landroid/text/TextUtils;->-wrap0(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto/16 :goto_15

    nop

    :pswitch_data_134
    .packed-switch 0x1
        :pswitch_39
        :pswitch_42
        :pswitch_4b
        :pswitch_54
        :pswitch_5d
        :pswitch_66
        :pswitch_6f
        :pswitch_78
        :pswitch_81
        :pswitch_8a
        :pswitch_93
        :pswitch_9d
        :pswitch_a7
        :pswitch_b1
        :pswitch_bb
        :pswitch_c5
        :pswitch_cf
        :pswitch_d9
        :pswitch_e3
        :pswitch_ed
        :pswitch_f7
        :pswitch_101
        :pswitch_10b
        :pswitch_115
        :pswitch_11f
        :pswitch_129
    .end packed-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/text/TextUtils$1;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Ljava/lang/CharSequence;
    .registers 3

    new-array v0, p1, [Ljava/lang/CharSequence;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/text/TextUtils$1;->newArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
