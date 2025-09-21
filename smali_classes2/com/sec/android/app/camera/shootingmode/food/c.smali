.class public final synthetic Lcom/sec/android/app/camera/shootingmode/food/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/shootingmode/food/FoodPresenter;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/shootingmode/food/FoodPresenter;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/food/c;->a:Lcom/sec/android/app/camera/shootingmode/food/FoodPresenter;

    iput-boolean p2, p0, Lcom/sec/android/app/camera/shootingmode/food/c;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/food/c;->a:Lcom/sec/android/app/camera/shootingmode/food/FoodPresenter;

    iget-boolean p0, p0, Lcom/sec/android/app/camera/shootingmode/food/c;->b:Z

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/shootingmode/food/FoodPresenter;->d(Lcom/sec/android/app/camera/shootingmode/food/FoodPresenter;Z)V

    return-void
.end method
