.class Landroid/widget/CalendarViewLegacyDelegate$2;
.super Ljava/lang/Object;
.source "CalendarViewLegacyDelegate.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/CalendarViewLegacyDelegate;->setUpListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/CalendarViewLegacyDelegate;


# direct methods
.method constructor <init>(Landroid/widget/CalendarViewLegacyDelegate;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate$2;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 6

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$2;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/widget/CalendarViewLegacyDelegate;->-wrap2(Landroid/widget/CalendarViewLegacyDelegate;Landroid/widget/AbsListView;III)V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 4

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$2;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v0, p1, p2}, Landroid/widget/CalendarViewLegacyDelegate;->-wrap1(Landroid/widget/CalendarViewLegacyDelegate;Landroid/widget/AbsListView;I)V

    return-void
.end method
