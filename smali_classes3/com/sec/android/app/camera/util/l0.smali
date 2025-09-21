.class public final synthetic Lcom/sec/android/app/camera/util/l0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/util/l0;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/sec/android/app/camera/util/l0;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/util/l0;->a:Landroid/view/View;

    iget-object p0, p0, Lcom/sec/android/app/camera/util/l0;->b:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/util/ViewPropertyAnimatorHelper;->a(Landroid/view/View;Landroid/content/Context;)V

    return-void
.end method
