.class public Le6/a;
.super Ljava/lang/Object;
.source "DiagMonConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le6/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field public h:Z

.field private i:Le6/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Le6/a;->b:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Le6/a;->c:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Le6/a;->d:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Le6/a;->f:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Le6/a;->g:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Le6/a;->a:Landroid/content/Context;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Le6/a;->e:Z

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Le6/a;->h:Z

    .line 10
    invoke-static {p1}, Ld6/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le6/a;->c:Ljava/lang/String;

    .line 11
    iget-object p1, p0, Le6/a;->a:Landroid/content/Context;

    invoke-static {p1}, Lg6/a;->a(Landroid/content/Context;)I

    move-result p1

    if-ne p1, v0, :cond_0

    .line 12
    new-instance p1, Le6/a$a;

    invoke-direct {p1, p0}, Le6/a$a;-><init>(Le6/a;)V

    iput-object p1, p0, Le6/a;->i:Le6/a$a;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le6/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lg6/a;->a(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p0, p0, Le6/a;->i:Le6/a$a;

    invoke-virtual {p0}, Le6/a$a;->a()Z

    move-result p0

    return p0

    .line 3
    :cond_0
    iget-boolean p0, p0, Le6/a;->e:Z

    return p0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Le6/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lg6/a;->a(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p0, p0, Le6/a;->i:Le6/a$a;

    invoke-virtual {p0}, Le6/a$a;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    iget-object p0, p0, Le6/a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public c()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Le6/a;->a:Landroid/content/Context;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Le6/a;->f:Ljava/lang/String;

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Le6/a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public f()Z
    .locals 0

    iget-boolean p0, p0, Le6/a;->h:Z

    return p0
.end method

.method public g()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Le6/a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Le6/a;->g:Ljava/lang/String;

    return-object p0
.end method

.method public i(Ljava/lang/String;)Le6/a;
    .locals 2

    .line 1
    iput-object p1, p0, Le6/a;->d:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lg6/a;->a:Ljava/lang/String;

    const-string v0, "You can\'t use agreement as null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 3
    :cond_0
    iget-object p1, p0, Le6/a;->a:Landroid/content/Context;

    invoke-static {p1}, Lg6/a;->a(Landroid/content/Context;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Le6/a;->i:Le6/a$a;

    iget-object v0, p0, Le6/a;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Le6/a$a;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 5
    :cond_1
    iget-object p1, p0, Le6/a;->d:Ljava/lang/String;

    const-string v1, "D"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Le6/a;->d:Ljava/lang/String;

    const-string v1, "S"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Le6/a;->e:Z

    goto :goto_1

    .line 7
    :cond_3
    :goto_0
    iput-boolean v0, p0, Le6/a;->e:Z

    :goto_1
    return-object p0
.end method

.method public j(Ljava/lang/String;)Le6/a;
    .locals 0

    iput-object p1, p0, Le6/a;->b:Ljava/lang/String;

    return-object p0
.end method
