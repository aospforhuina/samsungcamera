.class Le5/a$a;
.super Ljava/lang/Object;
.source "DMABinder.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le5/a;-><init>(Landroid/content/Context;Lw4/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lw4/a;

.field final synthetic b:Le5/a;


# direct methods
.method constructor <init>(Le5/a;Lw4/a;)V
    .locals 0

    iput-object p1, p0, Le5/a$a;->b:Le5/a;

    iput-object p2, p0, Le5/a$a;->a:Lw4/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const/4 p1, 0x1

    .line 1
    :try_start_0
    iget-object v0, p0, Le5/a$a;->b:Le5/a;

    invoke-static {p2}, Lh6/a$a;->a(Landroid/os/IBinder;)Lh6/a;

    move-result-object p2

    invoke-static {v0, p2}, Le5/a;->b(Le5/a;Lh6/a;)Lh6/a;

    .line 2
    iget-object p2, p0, Le5/a$a;->b:Le5/a;

    invoke-static {p2}, Le5/a;->a(Le5/a;)Lh6/a;

    move-result-object p2

    invoke-interface {p2}, Lh6/a;->R()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "DMABinder"

    if-nez p2, :cond_0

    .line 3
    :try_start_1
    iget-object p2, p0, Le5/a$a;->b:Le5/a;

    invoke-virtual {p2}, Le5/a;->h()V

    .line 4
    iget-object p2, p0, Le5/a$a;->b:Le5/a;

    invoke-static {p2, p1}, Le5/a;->c(Le5/a;Z)Z

    const-string p2, "Token failed"

    .line 5
    invoke-static {v0, p2}, Lk5/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Le5/a$a;->b:Le5/a;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Le5/a;->c(Le5/a;Z)Z

    .line 7
    iget-object v1, p0, Le5/a$a;->a:Lw4/a;

    invoke-interface {v1, p2}, Lw4/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "DMA connected"

    .line 8
    invoke-static {v0, p2}, Lk5/b;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 9
    iget-object v0, p0, Le5/a$a;->b:Le5/a;

    invoke-virtual {v0}, Le5/a;->h()V

    .line 10
    iget-object p0, p0, Le5/a$a;->b:Le5/a;

    invoke-static {p0, p1}, Le5/a;->c(Le5/a;Z)Z

    .line 11
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p2}, Lk5/b;->e(Ljava/lang/Class;Ljava/lang/Exception;)V

    .line 12
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    iget-object p0, p0, Le5/a$a;->b:Le5/a;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Le5/a;->b(Le5/a;Lh6/a;)Lh6/a;

    return-void
.end method
