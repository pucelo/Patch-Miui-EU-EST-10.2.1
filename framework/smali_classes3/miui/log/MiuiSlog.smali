.class public final Lmiui/log/MiuiSlog;
.super Ljava/lang/Object;
.source "MiuiSlog.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(ILjava/lang/Object;Ljava/lang/String;)V
    .registers 4

    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/log/MiuiSlog;->d(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static d(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lmiui/log/MiuiSlog;->d(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static d(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 8

    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_21

    if-eqz p1, :cond_22

    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string/jumbo v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    :goto_21
    return-void

    :cond_22
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method public static d(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 9

    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_21

    if-eqz p1, :cond_22

    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string/jumbo v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_21
    :goto_21
    return-void

    :cond_22
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21
.end method

.method public static e(ILjava/lang/Object;Ljava/lang/String;)V
    .registers 4

    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/log/MiuiSlog;->e(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static e(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lmiui/log/MiuiSlog;->e(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static e(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 8

    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_21

    if-eqz p1, :cond_22

    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string/jumbo v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    :goto_21
    return-void

    :cond_22
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method public static e(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 9

    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_21

    if-eqz p1, :cond_22

    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string/jumbo v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_21
    :goto_21
    return-void

    :cond_22
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21
.end method

.method public static i(ILjava/lang/Object;Ljava/lang/String;)V
    .registers 4

    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/log/MiuiSlog;->i(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static i(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lmiui/log/MiuiSlog;->i(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static i(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 8

    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_21

    if-eqz p1, :cond_22

    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string/jumbo v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    :goto_21
    return-void

    :cond_22
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method public static i(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 9

    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_21

    if-eqz p1, :cond_22

    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string/jumbo v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_21
    :goto_21
    return-void

    :cond_22
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21
.end method

.method public static println(ILjava/lang/Object;ILjava/lang/String;)V
    .registers 5

    invoke-static {p2}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lmiui/log/MiuiSlog;->println(ILjava/lang/Object;Lmiui/log/MiuiTag;Ljava/lang/String;)V

    return-void
.end method

.method public static println(ILjava/lang/Object;Lmiui/log/MiuiTag;Ljava/lang/String;)V
    .registers 9

    invoke-virtual {p2}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_21

    if-eqz p1, :cond_22

    iget-object v0, p2, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string/jumbo v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/util/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_21
    :goto_21
    return-void

    :cond_22
    iget-object v0, p2, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {p0, v0, p3}, Landroid/util/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method public static v(ILjava/lang/Object;Ljava/lang/String;)V
    .registers 4

    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/log/MiuiSlog;->v(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static v(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lmiui/log/MiuiSlog;->v(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static v(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 8

    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_21

    if-eqz p1, :cond_22

    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string/jumbo v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    :goto_21
    return-void

    :cond_22
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method public static v(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 9

    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_21

    if-eqz p1, :cond_22

    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string/jumbo v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_21
    :goto_21
    return-void

    :cond_22
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2, p3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21
.end method

.method public static w(ILjava/lang/Object;Ljava/lang/String;)V
    .registers 4

    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/log/MiuiSlog;->w(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static w(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lmiui/log/MiuiSlog;->w(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static w(ILjava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4

    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/log/MiuiSlog;->w(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static w(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 8

    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_21

    if-eqz p1, :cond_22

    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string/jumbo v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    :goto_21
    return-void

    :cond_22
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method public static w(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 9

    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_21

    if-eqz p1, :cond_22

    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string/jumbo v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_21
    :goto_21
    return-void

    :cond_22
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21
.end method

.method public static w(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 8

    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_1e

    if-eqz p1, :cond_1f

    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string/jumbo v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e
.end method

.method public static wtf(ILjava/lang/Object;Ljava/lang/String;)V
    .registers 4

    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/log/MiuiSlog;->wtf(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static wtf(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lmiui/log/MiuiSlog;->wtf(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static wtf(ILjava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4

    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/log/MiuiSlog;->wtf(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static wtf(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 8

    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_21

    if-eqz p1, :cond_22

    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string/jumbo v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    :goto_21
    return-void

    :cond_22
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method public static wtf(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 9

    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_21

    if-eqz p1, :cond_22

    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string/jumbo v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_21
    :goto_21
    return-void

    :cond_22
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2, p3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21
.end method

.method public static wtf(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 8

    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_1e

    if-eqz p1, :cond_1f

    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string/jumbo v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e
.end method

.method public static wtfStack(ILjava/lang/Object;Ljava/lang/String;)V
    .registers 4

    invoke-static {p0}, Lmiui/log/Tags;->getMiuiTag(I)Lmiui/log/MiuiTag;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/log/MiuiSlog;->wtfStack(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static wtfStack(Lmiui/log/MiuiTag;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 8

    invoke-virtual {p0}, Lmiui/log/MiuiTag;->isOn()Z

    move-result v0

    if-eqz v0, :cond_21

    if-eqz p1, :cond_22

    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    const-string/jumbo v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    :goto_21
    return-void

    :cond_22
    iget-object v0, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method
