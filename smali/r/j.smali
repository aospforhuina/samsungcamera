.class public Lr/j;
.super Ljava/lang/Object;
.source "DropShadowEffect.java"


# instance fields
.field private final a:Ln/a;

.field private final b:Ln/b;

.field private final c:Ln/b;

.field private final d:Ln/b;

.field private final e:Ln/b;


# direct methods
.method constructor <init>(Ln/a;Ln/b;Ln/b;Ln/b;Ln/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lr/j;->a:Ln/a;

    .line 3
    iput-object p2, p0, Lr/j;->b:Ln/b;

    .line 4
    iput-object p3, p0, Lr/j;->c:Ln/b;

    .line 5
    iput-object p4, p0, Lr/j;->d:Ln/b;

    .line 6
    iput-object p5, p0, Lr/j;->e:Ln/b;

    return-void
.end method


# virtual methods
.method public a()Ln/a;
    .locals 0

    iget-object p0, p0, Lr/j;->a:Ln/a;

    return-object p0
.end method

.method public b()Ln/b;
    .locals 0

    iget-object p0, p0, Lr/j;->c:Ln/b;

    return-object p0
.end method

.method public c()Ln/b;
    .locals 0

    iget-object p0, p0, Lr/j;->d:Ln/b;

    return-object p0
.end method

.method public d()Ln/b;
    .locals 0

    iget-object p0, p0, Lr/j;->b:Ln/b;

    return-object p0
.end method

.method public e()Ln/b;
    .locals 0

    iget-object p0, p0, Lr/j;->e:Ln/b;

    return-object p0
.end method
