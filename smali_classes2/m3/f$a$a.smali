.class Lm3/f$a$a;
.super Landroid/app/KeyguardManager$KeyguardDismissCallback;
.source "VisionTextActionModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm3/f$a;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lm3/f$a;


# direct methods
.method constructor <init>(Lm3/f$a;)V
    .locals 0

    iput-object p1, p0, Lm3/f$a$a;->a:Lm3/f$a;

    invoke-direct {p0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissSucceeded()V
    .locals 2

    .line 1
    iget-object v0, p0, Lm3/f$a$a;->a:Lm3/f$a;

    iget-object v0, v0, Lm3/f$a;->b:Lm3/f;

    invoke-static {v0}, Lm3/f;->k(Lm3/f;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/high16 v1, 0x10000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3
    iget-object v1, p0, Lm3/f$a$a;->a:Lm3/f$a;

    iget-object v1, v1, Lm3/f$a;->b:Lm3/f;

    iget-object v1, v1, Lm3/f;->a:Lm3/w;

    invoke-virtual {v1}, Lm3/w;->i0()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lm3/f$a$a;->a:Lm3/f$a;

    iget-object v0, v0, Lm3/f$a;->b:Lm3/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lm3/f;->i(Lm3/f;Z)Z

    .line 5
    iget-object p0, p0, Lm3/f$a$a;->a:Lm3/f$a;

    iget-object p0, p0, Lm3/f$a;->b:Lm3/f;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lm3/f;->j(Lm3/f;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
