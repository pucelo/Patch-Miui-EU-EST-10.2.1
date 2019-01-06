.class public final Landroid/view/textclassifier/TextClassifierConstants;
.super Ljava/lang/Object;
.source "TextClassifierConstants.java"


# static fields
.field static final DEFAULT:Landroid/view/textclassifier/TextClassifierConstants;

.field private static final LOG_TAG:Ljava/lang/String; = "TextClassifierConstants"

.field private static final SMART_SELECTION_DARK_LAUNCH:Ljava/lang/String; = "smart_selection_dark_launch"

.field private static final SMART_SELECTION_DARK_LAUNCH_DEFAULT:Z = false

.field private static final SMART_SELECTION_ENABLED_FOR_EDIT_TEXT:Ljava/lang/String; = "smart_selection_enabled_for_edit_text"

.field private static final SMART_SELECTION_ENABLED_FOR_EDIT_TEXT_DEFAULT:Z = true


# instance fields
.field private final mDarkLaunch:Z

.field private final mSuggestSelectionEnabledForEditableText:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/textclassifier/TextClassifierConstants;

    invoke-direct {v0}, Landroid/view/textclassifier/TextClassifierConstants;-><init>()V

    sput-object v0, Landroid/view/textclassifier/TextClassifierConstants;->DEFAULT:Landroid/view/textclassifier/TextClassifierConstants;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/textclassifier/TextClassifierConstants;->mDarkLaunch:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/textclassifier/TextClassifierConstants;->mSuggestSelectionEnabledForEditableText:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/util/KeyValueListParser;

    const/16 v2, 0x2c

    invoke-direct {v1, v2}, Landroid/util/KeyValueListParser;-><init>(C)V

    :try_start_a
    invoke-virtual {v1, p1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_d} :catch_22

    :goto_d
    const-string/jumbo v2, "smart_selection_dark_launch"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Landroid/view/textclassifier/TextClassifierConstants;->mDarkLaunch:Z

    const-string/jumbo v2, "smart_selection_enabled_for_edit_text"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Landroid/view/textclassifier/TextClassifierConstants;->mSuggestSelectionEnabledForEditableText:Z

    return-void

    :catch_22
    move-exception v0

    const-string/jumbo v2, "TextClassifierConstants"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bad TextClassifier settings: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method static loadFromString(Ljava/lang/String;)Landroid/view/textclassifier/TextClassifierConstants;
    .registers 2

    new-instance v0, Landroid/view/textclassifier/TextClassifierConstants;

    invoke-direct {v0, p0}, Landroid/view/textclassifier/TextClassifierConstants;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public isDarkLaunch()Z
    .registers 2

    iget-boolean v0, p0, Landroid/view/textclassifier/TextClassifierConstants;->mDarkLaunch:Z

    return v0
.end method

.method public isSuggestSelectionEnabledForEditableText()Z
    .registers 2

    iget-boolean v0, p0, Landroid/view/textclassifier/TextClassifierConstants;->mSuggestSelectionEnabledForEditableText:Z

    return v0
.end method
