.class public Lmiui/maml/NotifierManager$MultiBroadcastNotifier;
.super Lmiui/maml/NotifierManager$BroadcastNotifier;
.source "NotifierManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/NotifierManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiBroadcastNotifier"
.end annotation


# instance fields
.field private mIntents:[Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/maml/NotifierManager$BroadcastNotifier;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lmiui/maml/NotifierManager$MultiBroadcastNotifier;->mIntents:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createIntentFilter()Landroid/content/IntentFilter;
    .registers 6

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iget-object v3, p0, Lmiui/maml/NotifierManager$MultiBroadcastNotifier;->mIntents:[Ljava/lang/String;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_9
    if-ge v2, v4, :cond_13

    aget-object v1, v3, v2

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_13
    return-object v0
.end method
