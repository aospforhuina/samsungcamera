.class public final synthetic Lcom/sec/android/app/camera/widget/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/widget/ExpandableSlider;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/widget/ExpandableSlider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/c;->a:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/widget/c;->a:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->m(Lcom/sec/android/app/camera/widget/ExpandableSlider;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
