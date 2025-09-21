.class public Ln5/q;
.super Ljava/lang/Object;
.source "QuickSettingViewItem.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private final a:Lcom/sec/android/app/camera/interfaces/CommandId;

.field private final b:I

.field private final c:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

.field private d:I

.field private f:Ljava/lang/String;

.field private g:Z

.field private k:Z

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CommandId;IZZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln5/q;->a:Lcom/sec/android/app/camera/interfaces/CommandId;

    .line 3
    invoke-static {p1}, Lx5/d;->a(Lcom/sec/android/app/camera/interfaces/CommandId;)Lx5/d$d;

    move-result-object v0

    invoke-virtual {v0}, Lx5/e$b;->c()I

    move-result v0

    iput v0, p0, Ln5/q;->b:I

    .line 4
    invoke-static {p1}, Lm5/f0;->c(Lcom/sec/android/app/camera/interfaces/CommandId;)Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    move-result-object v0

    iput-object v0, p0, Ln5/q;->c:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    .line 5
    iput p2, p0, Ln5/q;->d:I

    .line 6
    iput-boolean p3, p0, Ln5/q;->g:Z

    .line 7
    iput-boolean p4, p0, Ln5/q;->k:Z

    .line 8
    iput-boolean p5, p0, Ln5/q;->l:Z

    const/4 p2, 0x0

    .line 9
    iput-object p2, p0, Ln5/q;->f:Ljava/lang/String;

    .line 10
    invoke-static {p1}, Lx5/d;->a(Lcom/sec/android/app/camera/interfaces/CommandId;)Lx5/d$d;

    move-result-object p1

    invoke-virtual {p1}, Lx5/d$d;->m()Z

    move-result p1

    iput-boolean p1, p0, Ln5/q;->m:Z

    return-void
.end method


# virtual methods
.method public a()Ln5/q;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln5/q;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object p0
.end method

.method public b()Lcom/sec/android/app/camera/interfaces/CommandId;
    .locals 0

    iget-object p0, p0, Ln5/q;->a:Lcom/sec/android/app/camera/interfaces/CommandId;

    return-object p0
.end method

.method public c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Ln5/q;->a:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-static {v0}, Lx5/d;->a(Lcom/sec/android/app/camera/interfaces/CommandId;)Lx5/d$d;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lx5/e$b;->b()I

    move-result v1

    if-lez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lx5/e$b;->b()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    invoke-virtual {v0}, Lx5/e$b;->e()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-boolean p0, p0, Ln5/q;->l:Z

    if-eqz p0, :cond_1

    const-string p0, ", "

    .line 7
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p0, 0x7f120408

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ln5/q;->a()Ln5/q;

    move-result-object p0

    return-object p0
.end method

.method public e()I
    .locals 0

    iget p0, p0, Ln5/q;->b:I

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Ln5/q;->a:Lcom/sec/android/app/camera/interfaces/CommandId;

    check-cast p1, Ln5/q;

    iget-object p1, p1, Ln5/q;->a:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public g()Z
    .locals 0

    iget-boolean p0, p0, Ln5/q;->k:Z

    return p0
.end method

.method public h()I
    .locals 0

    iget p0, p0, Ln5/q;->d:I

    return p0
.end method

.method public i()Z
    .locals 0

    iget-boolean p0, p0, Ln5/q;->g:Z

    return p0
.end method

.method public j(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Ln5/q;->f:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 2
    iget-object v0, p0, Ln5/q;->a:Lcom/sec/android/app/camera/interfaces/CommandId;

    iget-object v1, p0, Ln5/q;->c:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    iget p0, p0, Ln5/q;->d:I

    invoke-static {v0, v1, p0}, Lx5/d;->b(Lcom/sec/android/app/camera/interfaces/CommandId;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)Lx5/d$d;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lx5/d$d;->i()I

    move-result v0

    if-lez v0, :cond_3

    .line 4
    sget-object v0, Ln5/q$a;->a:[I

    invoke-virtual {p0}, Lx5/d$d;->l()Lx5/d$e;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Lx5/d$d;->i()I

    move-result v0

    invoke-virtual {p0}, Lx5/d$d;->g()I

    move-result v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lx5/d$d;->g()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v3

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSubTitle can\'t support for toastType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lx5/d$d;->l()Lx5/d$e;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    invoke-virtual {p0}, Lx5/d$d;->i()I

    move-result v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lx5/d$d;->g()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :cond_2
    invoke-virtual {p0}, Lx5/d$d;->i()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0

    :cond_4
    return-object v0
.end method

.method public k(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ln5/q;->a:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-static {p0}, Lx5/d;->a(Lcom/sec/android/app/camera/interfaces/CommandId;)Lx5/d$d;

    move-result-object p0

    invoke-virtual {p0}, Lx5/e$b;->e()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public l()Z
    .locals 0

    iget-boolean p0, p0, Ln5/q;->l:Z

    return p0
.end method

.method public m()Z
    .locals 0

    iget-boolean p0, p0, Ln5/q;->m:Z

    return p0
.end method

.method public n(Z)V
    .locals 0

    iput-boolean p1, p0, Ln5/q;->l:Z

    return-void
.end method

.method public p(Z)V
    .locals 0

    iput-boolean p1, p0, Ln5/q;->k:Z

    return-void
.end method

.method public q(I)V
    .locals 0

    iput p1, p0, Ln5/q;->d:I

    return-void
.end method

.method public r(Z)V
    .locals 0

    iput-boolean p1, p0, Ln5/q;->g:Z

    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ln5/q;->f:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QuickSettingViewItem{mCommandId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ln5/q;->a:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSettingKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ln5/q;->c:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
