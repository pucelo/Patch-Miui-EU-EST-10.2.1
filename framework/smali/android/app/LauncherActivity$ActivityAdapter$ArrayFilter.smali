.class Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;
.super Landroid/widget/Filter;
.source "LauncherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LauncherActivity$ActivityAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArrayFilter"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/app/LauncherActivity$ActivityAdapter;


# direct methods
.method private constructor <init>(Landroid/app/LauncherActivity$ActivityAdapter;)V
    .registers 2

    iput-object p1, p0, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/LauncherActivity$ActivityAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/LauncherActivity$ActivityAdapter;Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;-><init>(Landroid/app/LauncherActivity$ActivityAdapter;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .registers 19

    new-instance v8, Landroid/widget/Filter$FilterResults;

    invoke-direct {v8}, Landroid/widget/Filter$FilterResults;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/LauncherActivity$ActivityAdapter;

    invoke-static {v13}, Landroid/app/LauncherActivity$ActivityAdapter;->-get1(Landroid/app/LauncherActivity$ActivityAdapter;)Ljava/util/ArrayList;

    move-result-object v13

    if-nez v13, :cond_31

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/LauncherActivity$ActivityAdapter;

    invoke-static {v13}, Landroid/app/LauncherActivity$ActivityAdapter;->-get0(Landroid/app/LauncherActivity$ActivityAdapter;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    :try_start_18
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/LauncherActivity$ActivityAdapter;

    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/LauncherActivity$ActivityAdapter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/LauncherActivity$ActivityAdapter;->mActivitiesList:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v13, v15}, Landroid/app/LauncherActivity$ActivityAdapter;->-set0(Landroid/app/LauncherActivity$ActivityAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_30
    .catchall {:try_start_18 .. :try_end_30} :catchall_59

    monitor-exit v14

    :cond_31
    if-eqz p1, :cond_39

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-nez v13, :cond_5f

    :cond_39
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/LauncherActivity$ActivityAdapter;

    invoke-static {v13}, Landroid/app/LauncherActivity$ActivityAdapter;->-get0(Landroid/app/LauncherActivity$ActivityAdapter;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    :try_start_42
    new-instance v5, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/LauncherActivity$ActivityAdapter;

    invoke-static {v13}, Landroid/app/LauncherActivity$ActivityAdapter;->-get1(Landroid/app/LauncherActivity$ActivityAdapter;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-direct {v5, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v5, v8, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    iput v13, v8, Landroid/widget/Filter$FilterResults;->count:I
    :try_end_57
    .catchall {:try_start_42 .. :try_end_57} :catchall_5c

    monitor-exit v14

    :goto_58
    return-object v8

    :catchall_59
    move-exception v13

    monitor-exit v14

    throw v13

    :catchall_5c
    move-exception v13

    monitor-exit v14

    throw v13

    :cond_5f
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/LauncherActivity$ActivityAdapter;

    invoke-static {v13}, Landroid/app/LauncherActivity$ActivityAdapter;->-get1(Landroid/app/LauncherActivity$ActivityAdapter;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_79
    if-ge v2, v1, :cond_a7

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/LauncherActivity$ListItem;

    iget-object v13, v3, Landroid/app/LauncherActivity$ListItem;->label:Ljava/lang/CharSequence;

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    array-length v11, v12

    const/4 v4, 0x0

    :goto_94
    if-ge v4, v11, :cond_a1

    aget-object v10, v12, v4

    invoke-virtual {v10, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a4

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a1
    add-int/lit8 v2, v2, 0x1

    goto :goto_79

    :cond_a4
    add-int/lit8 v4, v4, 0x1

    goto :goto_94

    :cond_a7
    iput-object v6, v8, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v13

    iput v13, v8, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_58
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .registers 5

    iget-object v1, p0, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/LauncherActivity$ActivityAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iput-object v0, v1, Landroid/app/LauncherActivity$ActivityAdapter;->mActivitiesList:Ljava/util/List;

    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_12

    iget-object v0, p0, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/LauncherActivity$ActivityAdapter;

    invoke-virtual {v0}, Landroid/app/LauncherActivity$ActivityAdapter;->notifyDataSetChanged()V

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/LauncherActivity$ActivityAdapter;

    invoke-virtual {v0}, Landroid/app/LauncherActivity$ActivityAdapter;->notifyDataSetInvalidated()V

    goto :goto_11
.end method
