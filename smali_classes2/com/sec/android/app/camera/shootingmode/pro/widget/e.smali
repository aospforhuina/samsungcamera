.class public final synthetic Lcom/sec/android/app/camera/shootingmode/pro/widget/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/e;->a:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/e;->b:I

    iput p3, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/e;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/e;->a:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/e;->b:I

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/e;->c:I

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->e(Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;II)V

    return-void
.end method
