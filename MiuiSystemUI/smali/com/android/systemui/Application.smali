.class public Lcom/android/systemui/Application;
.super Lmiui/external/Application;
.source "Application.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/external/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public getSystemUIApplication()Lcom/android/systemui/SystemUIApplication;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/Application;->getApplicationDelegate()Lmiui/external/ApplicationDelegate;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    return-object v0
.end method

.method public onCreateApplicationDelegate()Lmiui/external/ApplicationDelegate;
    .locals 1

    new-instance v0, Lcom/android/systemui/SystemUIApplication;

    invoke-direct {v0}, Lcom/android/systemui/SystemUIApplication;-><init>()V

    return-object v0
.end method
