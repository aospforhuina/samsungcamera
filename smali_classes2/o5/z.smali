.class public abstract Lo5/z;
.super Landroidx/databinding/ViewDataBinding;
.source "KeyScreenQuickSettingBinding.java"


# instance fields
.field public final a:Lcom/sec/android/app/camera/layer/keyscreen/quicksetting/QuickSettingView;

.field public final b:Lcom/sec/android/app/camera/layer/keyscreen/quicksetting/QuickSettingMainList;

.field public final c:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/sec/android/app/camera/layer/keyscreen/quicksetting/QuickSettingView;Lcom/sec/android/app/camera/layer/keyscreen/quicksetting/QuickSettingMainList;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lo5/z;->a:Lcom/sec/android/app/camera/layer/keyscreen/quicksetting/QuickSettingView;

    .line 3
    iput-object p5, p0, Lo5/z;->b:Lcom/sec/android/app/camera/layer/keyscreen/quicksetting/QuickSettingMainList;

    .line 4
    iput-object p6, p0, Lo5/z;->c:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method
