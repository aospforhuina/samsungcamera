.class Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$2;
.super Lcom/sec/android/app/camera/shootingmode/fun/FunModeCarouselLayoutManager;
.source "FunModeContentsNavigator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->initView(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;Landroid/content/Context;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$2;->this$0:Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;

    invoke-direct {p0, p2, p3, p4}, Lcom/sec/android/app/camera/shootingmode/fun/FunModeCarouselLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public canScrollHorizontally()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$2;->this$0:Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->c(Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->canScrollHorizontally()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canScrollVertically()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$2;->this$0:Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->c(Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->canScrollVertically()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
