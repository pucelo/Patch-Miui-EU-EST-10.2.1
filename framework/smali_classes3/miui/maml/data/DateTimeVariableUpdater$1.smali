.class Lmiui/maml/data/DateTimeVariableUpdater$1;
.super Ljava/lang/Object;
.source "DateTimeVariableUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/DateTimeVariableUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/data/DateTimeVariableUpdater;


# direct methods
.method constructor <init>(Lmiui/maml/data/DateTimeVariableUpdater;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/data/DateTimeVariableUpdater$1;->this$0:Lmiui/maml/data/DateTimeVariableUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater$1;->this$0:Lmiui/maml/data/DateTimeVariableUpdater;

    invoke-static {v0}, Lmiui/maml/data/DateTimeVariableUpdater;->-wrap0(Lmiui/maml/data/DateTimeVariableUpdater;)V

    return-void
.end method
