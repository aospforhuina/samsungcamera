.class public Lz0/e$a$a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz0/e$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:La1/l;

.field private b:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lz0/e$a;
    .locals 3

    .line 1
    iget-object v0, p0, Lz0/e$a$a;->a:La1/l;

    if-nez v0, :cond_0

    new-instance v0, La1/a;

    invoke-direct {v0}, La1/a;-><init>()V

    iput-object v0, p0, Lz0/e$a$a;->a:La1/l;

    :cond_0
    iget-object v0, p0, Lz0/e$a$a;->b:Landroid/os/Looper;

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lz0/e$a$a;->b:Landroid/os/Looper;

    .line 3
    :cond_1
    new-instance v0, Lz0/e$a;

    iget-object v1, p0, Lz0/e$a$a;->a:La1/l;

    iget-object p0, p0, Lz0/e$a$a;->b:Landroid/os/Looper;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, v2}, Lz0/e$a;-><init>(La1/l;Landroid/accounts/Account;Landroid/os/Looper;Lz0/o;)V

    return-object v0
.end method
