.class public final Lb1/e$a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb1/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/accounts/Account;

.field private b:Landroidx/collection/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArraySet<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ln1/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ln1/a;->k:Ln1/a;

    iput-object v0, p0, Lb1/e$a;->e:Ln1/a;

    return-void
.end method


# virtual methods
.method public a()Lb1/e;
    .locals 11

    new-instance v10, Lb1/e;

    iget-object v1, p0, Lb1/e$a;->a:Landroid/accounts/Account;

    iget-object v2, p0, Lb1/e$a;->b:Landroidx/collection/ArraySet;

    iget-object v6, p0, Lb1/e$a;->c:Ljava/lang/String;

    iget-object v7, p0, Lb1/e$a;->d:Ljava/lang/String;

    iget-object v8, p0, Lb1/e$a;->e:Ln1/a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lb1/e;-><init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Ln1/a;Z)V

    return-object v10
.end method

.method public b(Ljava/lang/String;)Lb1/e$a;
    .locals 0

    iput-object p1, p0, Lb1/e$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final c(Ljava/util/Collection;)Lb1/e$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)",
            "Lb1/e$a;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb1/e$a;->b:Landroidx/collection/ArraySet;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v0, p0, Lb1/e$a;->b:Landroidx/collection/ArraySet;

    :cond_0
    iget-object v0, p0, Lb1/e$a;->b:Landroidx/collection/ArraySet;

    .line 2
    invoke-virtual {v0, p1}, Landroidx/collection/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final d(Landroid/accounts/Account;)Lb1/e$a;
    .locals 0

    iput-object p1, p0, Lb1/e$a;->a:Landroid/accounts/Account;

    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lb1/e$a;
    .locals 0

    iput-object p1, p0, Lb1/e$a;->d:Ljava/lang/String;

    return-object p0
.end method
