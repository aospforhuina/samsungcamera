.class public final synthetic Lcom/sec/android/app/camera/util/layout/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(ZLandroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/sec/android/app/camera/util/layout/c;->a:Z

    iput-object p2, p0, Lcom/sec/android/app/camera/util/layout/c;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/util/layout/c;->a:Z

    iget-object p0, p0, Lcom/sec/android/app/camera/util/layout/c;->b:Landroid/view/View;

    check-cast p1, Landroidx/constraintlayout/widget/Guideline;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/camera/util/layout/LayoutUtil;->c(ZLandroid/view/View;Landroidx/constraintlayout/widget/Guideline;)V

    return-void
.end method
