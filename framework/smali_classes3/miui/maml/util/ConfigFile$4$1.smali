.class Lmiui/maml/util/ConfigFile$4$1;
.super Ljava/lang/Object;
.source "ConfigFile.java"

# interfaces
.implements Lmiui/maml/util/Utils$XmlTraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/util/ConfigFile$4;->onChild(Lorg/w3c/dom/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/maml/util/ConfigFile$4;


# direct methods
.method constructor <init>(Lmiui/maml/util/ConfigFile$4;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/util/ConfigFile$4$1;->this$1:Lmiui/maml/util/ConfigFile$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .registers 9

    const/4 v5, 0x0

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "id"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "StringInput"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    iget-object v4, p0, Lmiui/maml/util/ConfigFile$4$1;->this$1:Lmiui/maml/util/ConfigFile$4;

    iget-object v4, v4, Lmiui/maml/util/ConfigFile$4;->this$0:Lmiui/maml/util/ConfigFile;

    const-string/jumbo v5, "default"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lmiui/maml/util/ConfigFile;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    :goto_23
    return-void

    :cond_24
    const-string/jumbo v4, "CheckBox"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    iget-object v4, p0, Lmiui/maml/util/ConfigFile$4$1;->this$1:Lmiui/maml/util/ConfigFile$4;

    iget-object v5, v4, Lmiui/maml/util/ConfigFile$4;->this$0:Lmiui/maml/util/ConfigFile;

    const-string/jumbo v4, "default"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "1"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    const-string/jumbo v4, "1"

    :goto_44
    invoke-virtual {v5, v0, v4}, Lmiui/maml/util/ConfigFile;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    :cond_48
    const-string/jumbo v4, "0"

    goto :goto_44

    :cond_4c
    const-string/jumbo v4, "NumberInput"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_69

    const-string/jumbo v4, "default"

    invoke-static {p1, v4, v5}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v4

    float-to-double v2, v4

    iget-object v4, p0, Lmiui/maml/util/ConfigFile$4$1;->this$1:Lmiui/maml/util/ConfigFile$4;

    iget-object v4, v4, Lmiui/maml/util/ConfigFile$4;->this$0:Lmiui/maml/util/ConfigFile;

    invoke-static {v2, v3}, Lmiui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lmiui/maml/util/ConfigFile;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    :cond_69
    const-string/jumbo v4, "StringChoice"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_81

    iget-object v4, p0, Lmiui/maml/util/ConfigFile$4$1;->this$1:Lmiui/maml/util/ConfigFile$4;

    iget-object v4, v4, Lmiui/maml/util/ConfigFile$4;->this$0:Lmiui/maml/util/ConfigFile;

    const-string/jumbo v5, "default"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lmiui/maml/util/ConfigFile;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    :cond_81
    const-string/jumbo v4, "NumberChoice"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9e

    const-string/jumbo v4, "default"

    invoke-static {p1, v4, v5}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v4

    float-to-double v2, v4

    iget-object v4, p0, Lmiui/maml/util/ConfigFile$4$1;->this$1:Lmiui/maml/util/ConfigFile$4;

    iget-object v4, v4, Lmiui/maml/util/ConfigFile$4;->this$0:Lmiui/maml/util/ConfigFile;

    invoke-static {v2, v3}, Lmiui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lmiui/maml/util/ConfigFile;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    :cond_9e
    const-string/jumbo v4, "AppPicker"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    iget-object v4, p0, Lmiui/maml/util/ConfigFile$4$1;->this$1:Lmiui/maml/util/ConfigFile$4;

    iget-object v4, v4, Lmiui/maml/util/ConfigFile$4;->this$0:Lmiui/maml/util/ConfigFile;

    invoke-static {p1}, Lmiui/maml/util/Task;->load(Lorg/w3c/dom/Element;)Lmiui/maml/util/Task;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmiui/maml/util/ConfigFile;->putTask(Lmiui/maml/util/Task;)V

    goto/16 :goto_23
.end method
