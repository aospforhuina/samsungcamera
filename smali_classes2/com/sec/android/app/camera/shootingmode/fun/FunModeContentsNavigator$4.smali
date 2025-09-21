.class Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$4;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
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
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$4;->this$0:Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 0

    iget p0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p0, p0

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr p1, p0

    return p1
.end method

.method protected getHorizontalSnapPreference()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method protected getVerticalSnapPreference()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method
