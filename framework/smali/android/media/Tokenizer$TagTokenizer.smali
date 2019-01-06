.class Landroid/media/Tokenizer$TagTokenizer;
.super Ljava/lang/Object;
.source "WebVttRenderer.java"

# interfaces
.implements Landroid/media/Tokenizer$TokenizerPhase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Tokenizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TagTokenizer"
.end annotation


# instance fields
.field private mAnnotation:Ljava/lang/String;

.field private mAtAnnotation:Z

.field private mName:Ljava/lang/String;

.field final synthetic this$0:Landroid/media/Tokenizer;


# direct methods
.method constructor <init>(Landroid/media/Tokenizer;)V
    .registers 2

    iput-object p1, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private yield_tag()V
    .registers 11

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    const-string/jumbo v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v3}, Landroid/media/Tokenizer;->-get3(Landroid/media/Tokenizer;)Landroid/media/Tokenizer$OnTokenListener;

    move-result-object v3

    iget-object v6, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Landroid/media/Tokenizer$OnTokenListener;->onEnd(Ljava/lang/String;)V

    :goto_1c
    return-void

    :cond_1d
    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_66

    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_66

    :try_start_31
    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    invoke-static {v3}, Landroid/media/WebVttParser;->parseTimestampMs(Ljava/lang/String;)J

    move-result-wide v4

    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v3}, Landroid/media/Tokenizer;->-get3(Landroid/media/Tokenizer;)Landroid/media/Tokenizer$OnTokenListener;

    move-result-object v3

    invoke-interface {v3, v4, v5}, Landroid/media/Tokenizer$OnTokenListener;->onTimeStamp(J)V
    :try_end_40
    .catch Ljava/lang/NumberFormatException; {:try_start_31 .. :try_end_40} :catch_41

    goto :goto_1c

    :catch_41
    move-exception v2

    const-string/jumbo v3, "Tokenizer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "invalid timestamp tag: <"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    :cond_66
    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    const-string/jumbo v6, "\\s+"

    const-string/jumbo v7, " "

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    const-string/jumbo v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_87

    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    :cond_87
    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    const-string/jumbo v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a2

    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    iget-object v6, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    :cond_a2
    const/4 v0, 0x0

    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    const/16 v6, 0x2e

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_c4

    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "\\."

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    invoke-virtual {v3, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    :cond_c4
    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v3}, Landroid/media/Tokenizer;->-get3(Landroid/media/Tokenizer;)Landroid/media/Tokenizer$OnTokenListener;

    move-result-object v3

    iget-object v6, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    iget-object v7, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    invoke-interface {v3, v6, v0, v7}, Landroid/media/Tokenizer$OnTokenListener;->onStart(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c
.end method


# virtual methods
.method public start()Landroid/media/Tokenizer$TokenizerPhase;
    .registers 2

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/Tokenizer$TagTokenizer;->mAtAnnotation:Z

    return-object p0
.end method

.method public tokenize()V
    .registers 8

    const/4 v6, 0x0

    iget-boolean v2, p0, Landroid/media/Tokenizer$TagTokenizer;->mAtAnnotation:Z

    if-nez v2, :cond_10

    iget-object v2, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v2}, Landroid/media/Tokenizer;->-get1(Landroid/media/Tokenizer;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Landroid/media/Tokenizer;->-set0(Landroid/media/Tokenizer;I)I

    :cond_10
    iget-object v2, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v2}, Landroid/media/Tokenizer;->-get1(Landroid/media/Tokenizer;)I

    move-result v2

    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v3}, Landroid/media/Tokenizer;->-get2(Landroid/media/Tokenizer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_9e

    iget-boolean v2, p0, Landroid/media/Tokenizer$TagTokenizer;->mAtAnnotation:Z

    if-nez v2, :cond_3a

    iget-object v2, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v2}, Landroid/media/Tokenizer;->-get2(Landroid/media/Tokenizer;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v3}, Landroid/media/Tokenizer;->-get1(Landroid/media/Tokenizer;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_e5

    :cond_3a
    iget-object v2, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v2}, Landroid/media/Tokenizer;->-get2(Landroid/media/Tokenizer;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v3}, Landroid/media/Tokenizer;->-get1(Landroid/media/Tokenizer;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :goto_51
    iget-object v2, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v2}, Landroid/media/Tokenizer;->-get2(Landroid/media/Tokenizer;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v3}, Landroid/media/Tokenizer;->-get1(Landroid/media/Tokenizer;)I

    move-result v3

    iget-object v4, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v4}, Landroid/media/Tokenizer;->-get1(Landroid/media/Tokenizer;)I

    move-result v4

    aget-object v5, v1, v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v2}, Landroid/media/Tokenizer;->-get1(Landroid/media/Tokenizer;)I

    move-result v3

    aget-object v4, v1, v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Landroid/media/Tokenizer;->-set0(Landroid/media/Tokenizer;I)I

    iget-boolean v2, p0, Landroid/media/Tokenizer$TagTokenizer;->mAtAnnotation:Z

    if-eqz v2, :cond_fe

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    :cond_9e
    :goto_9e
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/Tokenizer$TagTokenizer;->mAtAnnotation:Z

    iget-object v2, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v2}, Landroid/media/Tokenizer;->-get1(Landroid/media/Tokenizer;)I

    move-result v2

    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v3}, Landroid/media/Tokenizer;->-get2(Landroid/media/Tokenizer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_e4

    iget-object v2, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v2}, Landroid/media/Tokenizer;->-get2(Landroid/media/Tokenizer;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v3}, Landroid/media/Tokenizer;->-get1(Landroid/media/Tokenizer;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_e4

    invoke-direct {p0}, Landroid/media/Tokenizer$TagTokenizer;->yield_tag()V

    iget-object v2, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v3}, Landroid/media/Tokenizer;->-get0(Landroid/media/Tokenizer;)Landroid/media/Tokenizer$TokenizerPhase;

    move-result-object v3

    invoke-interface {v3}, Landroid/media/Tokenizer$TokenizerPhase;->start()Landroid/media/Tokenizer$TokenizerPhase;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/Tokenizer;->-set1(Landroid/media/Tokenizer;Landroid/media/Tokenizer$TokenizerPhase;)Landroid/media/Tokenizer$TokenizerPhase;

    iget-object v2, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v2}, Landroid/media/Tokenizer;->-get1(Landroid/media/Tokenizer;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Landroid/media/Tokenizer;->-set0(Landroid/media/Tokenizer;I)I

    :cond_e4
    return-void

    :cond_e5
    iget-object v2, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v2}, Landroid/media/Tokenizer;->-get2(Landroid/media/Tokenizer;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v3}, Landroid/media/Tokenizer;->-get1(Landroid/media/Tokenizer;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "[\t\u000c >]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_51

    :cond_fe
    iput-object v0, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    goto :goto_9e
.end method
