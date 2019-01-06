.class public Landroid/database/MatrixCursor$RowBuilder;
.super Ljava/lang/Object;
.source "MatrixCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/MatrixCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RowBuilder"
.end annotation


# instance fields
.field private final endIndex:I

.field private index:I

.field private final row:I

.field final synthetic this$0:Landroid/database/MatrixCursor;


# direct methods
.method constructor <init>(Landroid/database/MatrixCursor;I)V
    .registers 5

    iput-object p1, p0, Landroid/database/MatrixCursor$RowBuilder;->this$0:Landroid/database/MatrixCursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/database/MatrixCursor$RowBuilder;->row:I

    invoke-static {p1}, Landroid/database/MatrixCursor;->-get0(Landroid/database/MatrixCursor;)I

    move-result v0

    mul-int/2addr v0, p2

    iput v0, p0, Landroid/database/MatrixCursor$RowBuilder;->index:I

    iget v0, p0, Landroid/database/MatrixCursor$RowBuilder;->index:I

    invoke-static {p1}, Landroid/database/MatrixCursor;->-get0(Landroid/database/MatrixCursor;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/database/MatrixCursor$RowBuilder;->endIndex:I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
    .registers 5

    iget v0, p0, Landroid/database/MatrixCursor$RowBuilder;->index:I

    iget v1, p0, Landroid/database/MatrixCursor$RowBuilder;->endIndex:I

    if-ne v0, v1, :cond_f

    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string/jumbo v1, "No more columns left."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    iget-object v0, p0, Landroid/database/MatrixCursor$RowBuilder;->this$0:Landroid/database/MatrixCursor;

    invoke-static {v0}, Landroid/database/MatrixCursor;->-get2(Landroid/database/MatrixCursor;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Landroid/database/MatrixCursor$RowBuilder;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/database/MatrixCursor$RowBuilder;->index:I

    aput-object p1, v0, v1

    return-object p0
.end method

.method public add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
    .registers 7

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/database/MatrixCursor$RowBuilder;->this$0:Landroid/database/MatrixCursor;

    invoke-static {v1}, Landroid/database/MatrixCursor;->-get1(Landroid/database/MatrixCursor;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_2d

    iget-object v1, p0, Landroid/database/MatrixCursor$RowBuilder;->this$0:Landroid/database/MatrixCursor;

    invoke-static {v1}, Landroid/database/MatrixCursor;->-get1(Landroid/database/MatrixCursor;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Landroid/database/MatrixCursor$RowBuilder;->this$0:Landroid/database/MatrixCursor;

    invoke-static {v1}, Landroid/database/MatrixCursor;->-get2(Landroid/database/MatrixCursor;)[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Landroid/database/MatrixCursor$RowBuilder;->row:I

    iget-object v3, p0, Landroid/database/MatrixCursor$RowBuilder;->this$0:Landroid/database/MatrixCursor;

    invoke-static {v3}, Landroid/database/MatrixCursor;->-get0(Landroid/database/MatrixCursor;)I

    move-result v3

    mul-int/2addr v2, v3

    add-int/2addr v2, v0

    aput-object p2, v1, v2

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2d
    return-object p0
.end method
