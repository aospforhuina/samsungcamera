.class public Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "GuideLineView.java"


# instance fields
.field private mViewBinding:Lo5/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getInclinometer()Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;->mViewBinding:Lo5/m;

    iget-object p0, p0, Lo5/m;->b:Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;

    return-object p0
.end method

.method public getLevelMeter()Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;->mViewBinding:Lo5/m;

    iget-object p0, p0, Lo5/m;->c:Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;

    return-object p0
.end method

.method public setViewBinding(Landroidx/databinding/ViewDataBinding;)V
    .locals 0

    check-cast p1, Lo5/m;

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;->mViewBinding:Lo5/m;

    return-void
.end method
