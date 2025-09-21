.class public final synthetic Lcom/sec/android/app/camera/layer/menu/t;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/t;->a:Landroid/view/View;

    iput p2, p0, Lcom/sec/android/app/camera/layer/menu/t;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/t;->a:Landroid/view/View;

    iget p0, p0, Lcom/sec/android/app/camera/layer/menu/t;->b:I

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;->b(Landroid/view/View;I)V

    return-void
.end method
