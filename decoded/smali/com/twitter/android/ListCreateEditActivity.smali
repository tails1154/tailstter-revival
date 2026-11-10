.class public Lcom/twitter/android/ListCreateEditActivity;
.super Lcom/twitter/android/TwitterActivity;

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private a:J

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/Spinner;

.field private e:Landroid/widget/Button;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/twitter/android/TwitterActivity;-><init>(Z)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/ListCreateEditActivity;)V
    .locals 0

    invoke-super {p0}, Lcom/twitter/android/TwitterActivity;->a()V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    const/16 v1, 0x19

    if-le v0, v1, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v0, p0, Lcom/twitter/android/ListCreateEditActivity;->i:Z

    if-nez v0, :cond_2

    const v0, 0x7f090075

    invoke-virtual {p0, v0}, Lcom/twitter/android/ListCreateEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iput-boolean v5, p0, Lcom/twitter/android/ListCreateEditActivity;->i:Z

    :cond_2
    move v0, v4

    goto :goto_0

    :cond_3
    move v1, v5

    :goto_1
    if-ge v1, v0, :cond_6

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_5

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_5

    const/16 v3, 0x5f

    if-eq v2, v3, :cond_5

    iget-boolean v0, p0, Lcom/twitter/android/ListCreateEditActivity;->i:Z

    if-nez v0, :cond_4

    const v0, 0x7f090076

    invoke-virtual {p0, v0}, Lcom/twitter/android/ListCreateEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iput-boolean v5, p0, Lcom/twitter/android/ListCreateEditActivity;->i:Z

    :cond_4
    move v0, v4

    goto :goto_0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    iput-boolean v4, p0, Lcom/twitter/android/ListCreateEditActivity;->i:Z

    move v0, v5

    goto :goto_0
.end method

.method private b()I
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/ListCreateEditActivity;->d:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private c()Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/twitter/android/ListCreateEditActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/ListCreateEditActivity;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ListCreateEditActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    move v0, v4

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/twitter/android/ListCreateEditActivity;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/twitter/android/ListCreateEditActivity;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/ListCreateEditActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    move v0, v4

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/ListCreateEditActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    move v0, v5

    goto :goto_0
.end method

.method private d()Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/twitter/android/ListCreateEditActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/ListCreateEditActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/ListCreateEditActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/ListCreateEditActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/twitter/android/ListCreateEditActivity;->h:I

    invoke-direct {p0}, Lcom/twitter/android/ListCreateEditActivity;->b()I

    move-result v1

    if-eq v0, v1, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()V
    .locals 6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/twitter/android/ListCreateEditActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/ListCreateEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "full_name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-lez v3, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "full_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/twitter/android/ListCreateEditActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "description"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mode"

    invoke-direct {p0}, Lcom/twitter/android/ListCreateEditActivity;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/twitter/android/ListCreateEditActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/twitter/android/ListCreateEditActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    invoke-direct {p0}, Lcom/twitter/android/ListCreateEditActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/twitter/android/ListCreateEditActivity;->showDialog(I)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/twitter/android/TwitterActivity;->a()V

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    invoke-direct {p0}, Lcom/twitter/android/ListCreateEditActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/ListCreateEditActivity;->showDialog(I)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/twitter/android/TwitterActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public final onClickHandler(Landroid/view/View;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/twitter/android/ListCreateEditActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/twitter/android/ListCreateEditActivity;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/twitter/android/ListCreateEditActivity;->b()I

    move-result v4

    iget-wide v0, p0, Lcom/twitter/android/ListCreateEditActivity;->a:J

    const-wide/16 v5, 0x0

    cmp-long v0, v0, v5

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/twitter/android/ListCreateEditActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ListCreateEditActivity;->u:Lcom/twitter/android/client/i;

    iget-wide v1, p0, Lcom/twitter/android/ListCreateEditActivity;->a:J

    iget-object v5, p0, Lcom/twitter/android/ListCreateEditActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/client/i;->a(JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    invoke-direct {p0}, Lcom/twitter/android/ListCreateEditActivity;->e()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/ListCreateEditActivity;->u:Lcom/twitter/android/client/i;

    iget-object v1, p0, Lcom/twitter/android/ListCreateEditActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v4, v1}, Lcom/twitter/android/client/i;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    invoke-direct {p0}, Lcom/twitter/android/ListCreateEditActivity;->e()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/twitter/android/ListCreateEditActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/ListCreateEditActivity;->showDialog(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/twitter/android/ListCreateEditActivity;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0026
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v0, 0x7f030008

    invoke-super {p0, p1, v0}, Lcom/twitter/android/TwitterActivity;->a(Landroid/os/Bundle;I)V

    iget-object v0, p0, Lcom/twitter/android/ListCreateEditActivity;->u:Lcom/twitter/android/client/i;

    invoke-virtual {v0}, Lcom/twitter/android/client/i;->f()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f0e0023

    invoke-virtual {p0, v0}, Lcom/twitter/android/ListCreateEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/ListCreateEditActivity;->b:Landroid/widget/TextView;

    const v0, 0x7f0e0024

    invoke-virtual {p0, v0}, Lcom/twitter/android/ListCreateEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/ListCreateEditActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f0e0025

    invoke-virtual {p0, v0}, Lcom/twitter/android/ListCreateEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/twitter/android/ListCreateEditActivity;->d:Landroid/widget/Spinner;

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090008

    invoke-direct {v0, p0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    const v1, 0x7f09006f

    invoke-virtual {p0, v1}, Lcom/twitter/android/ListCreateEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    const v1, 0x7f09006e

    invoke-virtual {p0, v1}, Lcom/twitter/android/ListCreateEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/twitter/android/ListCreateEditActivity;->d:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/twitter/android/ListCreateEditActivity;->d:Landroid/widget/Spinner;

    const v1, 0x7f09006d

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setPromptId(I)V

    const v0, 0x7f0e0026

    invoke-virtual {p0, v0}, Lcom/twitter/android/ListCreateEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/twitter/android/ListCreateEditActivity;->e:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/twitter/android/ListCreateEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "list_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "list_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/twitter/android/ListCreateEditActivity;->a:J

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/ListCreateEditActivity;->f:Ljava/lang/String;

    const-string v1, "description"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/ListCreateEditActivity;->g:Ljava/lang/String;

    const-string v1, "mode"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/ListCreateEditActivity;->h:I

    iget-object v0, p0, Lcom/twitter/android/ListCreateEditActivity;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twitter/android/ListCreateEditActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twitter/android/ListCreateEditActivity;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twitter/android/ListCreateEditActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/twitter/android/ListCreateEditActivity;->h:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    const v0, 0x7f090066

    invoke-virtual {p0, v0}, Lcom/twitter/android/ListCreateEditActivity;->c(I)V

    :goto_2
    iget-object v0, p0, Lcom/twitter/android/ListCreateEditActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/twitter/android/ListCreateEditActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/twitter/android/ListCreateEditActivity;->d:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    new-array v0, v5, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/twitter/android/ListCreateEditActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    invoke-direct {p0}, Lcom/twitter/android/ListCreateEditActivity;->c()Z

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/twitter/android/ListCreateEditActivity;->d:Landroid/widget/Spinner;

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/twitter/android/ListCreateEditActivity;->d:Landroid/widget/Spinner;

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/twitter/android/ListCreateEditActivity;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/twitter/android/ListCreateEditActivity;->g:Ljava/lang/String;

    iput v4, p0, Lcom/twitter/android/ListCreateEditActivity;->h:I

    const v0, 0x7f090071

    invoke-virtual {p0, v0}, Lcom/twitter/android/ListCreateEditActivity;->c(I)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    move-object v0, v5

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/twitter/android/ar;

    invoke-direct {v0, p0, p1}, Lcom/twitter/android/ar;-><init>(Lcom/twitter/android/ListCreateEditActivity;I)V

    iget-wide v1, p0, Lcom/twitter/android/ListCreateEditActivity;->a:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const v1, 0x7f090066

    invoke-virtual {p0, v1}, Lcom/twitter/android/ListCreateEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x108009b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090074

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0900a4

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900a5

    invoke-virtual {v0, v1, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v1, 0x7f090071

    invoke-virtual {p0, v1}, Lcom/twitter/android/ListCreateEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct {p0}, Lcom/twitter/android/ListCreateEditActivity;->c()Z

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/twitter/android/TwitterActivity;->onResume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/ListCreateEditActivity;->i:Z

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-direct {p0}, Lcom/twitter/android/ListCreateEditActivity;->c()Z

    return-void
.end method
