.class Ls1/a$a;
.super Ljava/lang/Object;
.source "BadgeDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a;->J(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/widget/FrameLayout;

.field final synthetic c:Ls1/a;


# direct methods
.method constructor <init>(Ls1/a;Landroid/view/View;Landroid/widget/FrameLayout;)V
    .locals 0

    iput-object p1, p0, Ls1/a$a;->c:Ls1/a;

    iput-object p2, p0, Ls1/a$a;->a:Landroid/view/View;

    iput-object p3, p0, Ls1/a$a;->b:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ls1/a$a;->c:Ls1/a;

    iget-object v1, p0, Ls1/a$a;->a:Landroid/view/View;

    iget-object p0, p0, Ls1/a$a;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, p0}, Ls1/a;->L(Landroid/view/View;Landroid/widget/FrameLayout;)V

    return-void
.end method
