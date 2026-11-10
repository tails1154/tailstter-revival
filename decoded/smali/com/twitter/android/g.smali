.class public final Lcom/twitter/android/g;
.super Landroid/text/Editable$Factory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/text/Editable$Factory;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/text/Editable$Factory;
    .locals 1

    sget-object v0, Lcom/twitter/android/al;->a:Landroid/text/Editable$Factory;

    return-object v0
.end method


# virtual methods
.method public final newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;
    .locals 1

    new-instance v0, Lcom/twitter/android/al;

    invoke-direct {v0, p1}, Lcom/twitter/android/al;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method
