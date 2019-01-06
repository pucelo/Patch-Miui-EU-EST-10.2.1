.class public final Landroid/media/MediaCas$Session;
.super Ljava/lang/Object;
.source "MediaCas.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Session"
.end annotation


# instance fields
.field final mSessionId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/media/MediaCas;


# direct methods
.method constructor <init>(Landroid/media/MediaCas;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/media/MediaCas$Session;->mSessionId:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    iget-object v1, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v1}, Landroid/media/MediaCas;->-wrap3(Landroid/media/MediaCas;)V

    :try_start_5
    iget-object v1, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v1}, Landroid/media/MediaCas;->-get1(Landroid/media/MediaCas;)Landroid/hardware/cas/V1_0/ICas;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCas$Session;->mSessionId:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Landroid/hardware/cas/V1_0/ICas;->closeSession(Ljava/util/ArrayList;)I

    move-result v1

    invoke-static {v1}, Landroid/media/MediaCasStateException;->throwExceptionIfNeeded(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    iget-object v1, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v1}, Landroid/media/MediaCas;->-wrap2(Landroid/media/MediaCas;)V

    goto :goto_14
.end method

.method public processEcm([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/media/MediaCas$Session;->processEcm([BII)V

    return-void
.end method

.method public processEcm([BII)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    iget-object v1, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v1}, Landroid/media/MediaCas;->-wrap3(Landroid/media/MediaCas;)V

    :try_start_5
    iget-object v1, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v1}, Landroid/media/MediaCas;->-get1(Landroid/media/MediaCas;)Landroid/hardware/cas/V1_0/ICas;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCas$Session;->mSessionId:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v3, p1, p2, p3}, Landroid/media/MediaCas;->-wrap1(Landroid/media/MediaCas;[BII)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/hardware/cas/V1_0/ICas;->processEcm(Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v1

    invoke-static {v1}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_1a} :catch_1b

    :goto_1a
    return-void

    :catch_1b
    move-exception v0

    iget-object v1, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v1}, Landroid/media/MediaCas;->-wrap2(Landroid/media/MediaCas;)V

    goto :goto_1a
.end method

.method public setPrivateData([B)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    iget-object v1, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v1}, Landroid/media/MediaCas;->-wrap3(Landroid/media/MediaCas;)V

    :try_start_5
    iget-object v1, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v1}, Landroid/media/MediaCas;->-get1(Landroid/media/MediaCas;)Landroid/hardware/cas/V1_0/ICas;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCas$Session;->mSessionId:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    array-length v4, p1

    const/4 v5, 0x0

    invoke-static {v3, p1, v5, v4}, Landroid/media/MediaCas;->-wrap1(Landroid/media/MediaCas;[BII)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/hardware/cas/V1_0/ICas;->setSessionPrivateData(Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v1

    invoke-static {v1}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_1c} :catch_1d

    :goto_1c
    return-void

    :catch_1d
    move-exception v0

    iget-object v1, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v1}, Landroid/media/MediaCas;->-wrap2(Landroid/media/MediaCas;)V

    goto :goto_1c
.end method
