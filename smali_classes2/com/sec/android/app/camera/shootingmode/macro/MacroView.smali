.class public Lcom/sec/android/app/camera/shootingmode/macro/MacroView;
.super Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;
.source "MacroView.java"

# interfaces
.implements Lcom/sec/android/app/camera/shootingmode/macro/MacroContract$View;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView<",
        "Lcom/sec/android/app/camera/shootingmode/macro/MacroContract$Presenter;",
        ">;",
        "Lcom/sec/android/app/camera/shootingmode/macro/MacroContract$View;"
    }
.end annotation


# instance fields
.field private mViewBinding:Lo5/h5;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, p0, v1}, Lo5/h5;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/h5;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/macro/MacroView;->mViewBinding:Lo5/h5;

    .line 3
    iget-object v0, v0, Lo5/h5;->c:Landroidx/constraintlayout/widget/Guideline;

    sget-object v1, Lu3/g;->k:Lu3/g;

    invoke-static {v1}, Lu3/d;->a(Lu3/g;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/macro/MacroView;->mViewBinding:Lo5/h5;

    iget-object p0, p0, Lo5/h5;->a:Landroidx/constraintlayout/widget/Guideline;

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/util/Util;->updateBottomGuideLineIfSmartView(Landroid/content/Context;Landroidx/constraintlayout/widget/Guideline;)V

    return-void
.end method


# virtual methods
.method public inflateView()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/macro/MacroView;->initView()V

    return-void
.end method

.method public updateOrientation()V
    .locals 0

    return-void
.end method
