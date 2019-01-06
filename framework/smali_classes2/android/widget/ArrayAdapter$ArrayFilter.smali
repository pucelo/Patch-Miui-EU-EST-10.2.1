.class Landroid/widget/ArrayAdapter$ArrayFilter;
.super Landroid/widget/Filter;
.source "ArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArrayFilter"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ArrayAdapter;


# direct methods
.method private constructor <init>(Landroid/widget/ArrayAdapter;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ArrayAdapter;Landroid/widget/ArrayAdapter$ArrayFilter;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/ArrayAdapter$ArrayFilter;-><init>(Landroid/widget/ArrayAdapter;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .registers 17

    new-instance v5, Landroid/widget/Filter$FilterResults;

    invoke-direct {v5}, Landroid/widget/Filter$FilterResults;-><init>()V

    iget-object v11, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    invoke-static {v11}, Landroid/widget/ArrayAdapter;->-get2(Landroid/widget/ArrayAdapter;)Ljava/util/ArrayList;

    move-result-object v11

    if-nez v11, :cond_25

    iget-object v11, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    invoke-static {v11}, Landroid/widget/ArrayAdapter;->-get0(Landroid/widget/ArrayAdapter;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    :try_start_14
    iget-object v11, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    new-instance v13, Ljava/util/ArrayList;

    iget-object v14, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    invoke-static {v14}, Landroid/widget/ArrayAdapter;->-get1(Landroid/widget/ArrayAdapter;)Ljava/util/List;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v11, v13}, Landroid/widget/ArrayAdapter;->-set1(Landroid/widget/ArrayAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_24
    .catchall {:try_start_14 .. :try_end_24} :catchall_49

    monitor-exit v12

    :cond_25
    if-eqz p1, :cond_2d

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-nez v11, :cond_4f

    :cond_2d
    iget-object v11, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    invoke-static {v11}, Landroid/widget/ArrayAdapter;->-get0(Landroid/widget/ArrayAdapter;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    :try_start_34
    new-instance v2, Ljava/util/ArrayList;

    iget-object v11, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    invoke-static {v11}, Landroid/widget/ArrayAdapter;->-get2(Landroid/widget/ArrayAdapter;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-direct {v2, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_3f
    .catchall {:try_start_34 .. :try_end_3f} :catchall_4c

    monitor-exit v12

    iput-object v2, v5, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    iput v11, v5, Landroid/widget/Filter$FilterResults;->count:I

    :goto_48
    return-object v5

    :catchall_49
    move-exception v11

    monitor-exit v12

    throw v11

    :catchall_4c
    move-exception v11

    monitor-exit v12

    throw v11

    :cond_4f
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iget-object v11, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    invoke-static {v11}, Landroid/widget/ArrayAdapter;->-get0(Landroid/widget/ArrayAdapter;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    :try_start_5e
    new-instance v8, Ljava/util/ArrayList;

    iget-object v11, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    invoke-static {v11}, Landroid/widget/ArrayAdapter;->-get2(Landroid/widget/ArrayAdapter;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_69
    .catchall {:try_start_5e .. :try_end_69} :catchall_8e

    monitor-exit v12

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_74
    if-ge v1, v0, :cond_ab

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_91

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8b
    :goto_8b
    add-int/lit8 v1, v1, 0x1

    goto :goto_74

    :catchall_8e
    move-exception v11

    monitor-exit v12

    throw v11

    :cond_91
    const-string/jumbo v11, " "

    invoke-virtual {v7, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    array-length v12, v10

    :goto_9a
    if-ge v11, v12, :cond_8b

    aget-object v9, v10, v11

    invoke-virtual {v9, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a8

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8b

    :cond_a8
    add-int/lit8 v11, v11, 0x1

    goto :goto_9a

    :cond_ab
    iput-object v3, v5, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    iput v11, v5, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_48
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .registers 5

    iget-object v1, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Landroid/widget/ArrayAdapter;->-set0(Landroid/widget/ArrayAdapter;Ljava/util/List;)Ljava/util/List;

    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_13

    iget-object v0, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetInvalidated()V

    goto :goto_12
.end method
