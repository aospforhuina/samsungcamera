.class Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens$1;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$f;
.source "BottomSheetLens.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens$1;->this$0:Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$f;-><init>()V

    return-void
.end method


# virtual methods
.method public onSlide(Landroid/view/View;F)V
    .locals 0

    return-void
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .locals 0

    const/4 p1, 0x5

    if-ne p1, p2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens$1;->this$0:Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/b;->dismiss()V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens$1;->this$0:Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;->g(Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->Y(I)V

    :cond_0
    return-void
.end method
