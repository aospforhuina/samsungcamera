.class public final synthetic Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/v;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/v;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/v;->b:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/v;->a:Landroid/view/View;

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/v;->b:Ljava/lang/CharSequence;

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->o(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method
