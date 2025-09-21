.class Lw4/b$e;
.super Ljava/lang/Object;
.source "Tracker.java"

# interfaces
.implements Lw4/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw4/b;->B()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw4/a<",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lw4/b;


# direct methods
.method constructor <init>(Lw4/b;)V
    .locals 0

    iput-object p1, p0, Lw4/b$e;->a:Lw4/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lw4/b$e;->b(Ljava/lang/Boolean;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public b(Ljava/lang/Boolean;)Ljava/lang/Void;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lw4/b$e;->a:Lw4/b;

    invoke-static {p1}, Lw4/b;->l(Lw4/b;)Lv4/c;

    move-result-object p1

    invoke-virtual {p1}, Lv4/c;->c()Lv4/d;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lw4/b$e;->a:Lw4/b;

    invoke-static {p1}, Lw4/b;->a(Lw4/b;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lw4/b$e;->a:Lw4/b;

    invoke-static {v0}, Lw4/b;->l(Lw4/b;)Lv4/c;

    move-result-object v0

    invoke-static {p1, v0}, Lf5/a;->f(Landroid/content/Context;Lv4/c;)Lf5/a;

    move-result-object p1

    iget-object p0, p0, Lw4/b$e;->a:Lw4/b;

    .line 4
    invoke-static {p0}, Lw4/b;->a(Lw4/b;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lf5/a;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lw4/b$e;->a:Lw4/b;

    invoke-static {v0}, Lw4/b;->a(Lw4/b;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lw4/b$e;->a:Lw4/b;

    invoke-static {p0}, Lw4/b;->l(Lw4/b;)Lv4/c;

    move-result-object p0

    invoke-static {v0, p0}, Lf5/a;->f(Landroid/content/Context;Lv4/c;)Lf5/a;

    move-result-object p0

    new-instance v0, Lg5/a;

    invoke-direct {v0, p1}, Lg5/a;-><init>(Lv4/d;)V

    .line 6
    invoke-virtual {p0, v0}, Lf5/a;->c(Lg5/a;)V

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
