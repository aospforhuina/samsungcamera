.class Lw4/b$b;
.super Ljava/lang/Object;
.source "Tracker.java"

# interfaces
.implements Lb6/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw4/b;-><init>(Landroid/app/Application;Lv4/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lv4/c;

.field final synthetic b:Lw4/b;


# direct methods
.method constructor <init>(Lw4/b;Lv4/c;)V
    .locals 0

    iput-object p1, p0, Lw4/b$b;->b:Lw4/b;

    iput-object p2, p0, Lw4/b$b;->a:Lv4/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lw4/b$b;->a:Lv4/c;

    invoke-virtual {v0}, Lv4/c;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lw4/b$b;->a:Lv4/c;

    invoke-virtual {v0}, Lv4/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lw4/b$b;->b:Lw4/b;

    invoke-static {v0}, Lw4/b;->b(Lw4/b;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lw4/b$b;->a:Lv4/c;

    invoke-virtual {v0}, Lv4/c;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lw4/b$b;->b:Lw4/b;

    invoke-static {v0}, Lw4/b;->e(Lw4/b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lw4/b;->f(Lw4/b;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lw4/b$b;->b:Lw4/b;

    invoke-static {v0}, Lw4/b;->a(Lw4/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lk5/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lw4/b$b;->a:Lv4/c;

    .line 6
    invoke-virtual {v1}, Lv4/c;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceId"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "auidType"

    const/4 v2, 0x2

    .line 7
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 8
    iget-object v0, p0, Lw4/b$b;->a:Lv4/c;

    invoke-virtual {v0, v2}, Lv4/c;->l(I)V

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Lw4/b$b;->b:Lw4/b;

    invoke-static {v0}, Lw4/b;->a(Lw4/b;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lw4/b$b;->a:Lv4/c;

    invoke-static {v0, v1}, Lz4/b;->k(Landroid/content/Context;Lv4/c;)V

    .line 10
    invoke-static {}, Lz4/b;->e()I

    move-result v0

    if-nez v0, :cond_2

    .line 11
    iget-object v0, p0, Lw4/b$b;->b:Lw4/b;

    invoke-static {v0}, Lw4/b;->g(Lw4/b;)V

    .line 12
    :cond_2
    iget-object v0, p0, Lw4/b$b;->b:Lw4/b;

    invoke-static {v0}, Lw4/b;->h(Lw4/b;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    iget-object v0, p0, Lw4/b$b;->b:Lw4/b;

    invoke-static {v0}, Lw4/b;->a(Lw4/b;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lw4/b$b;->a:Lv4/c;

    invoke-static {v0, v1}, Lk5/d;->r(Landroid/content/Context;Lv4/c;)V

    .line 14
    iget-object p0, p0, Lw4/b$b;->b:Lw4/b;

    invoke-static {p0}, Lw4/b;->i(Lw4/b;)V

    :cond_3
    return-void
.end method
