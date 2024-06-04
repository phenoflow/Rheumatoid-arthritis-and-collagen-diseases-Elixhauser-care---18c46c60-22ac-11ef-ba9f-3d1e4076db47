cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-acrosclerosis---primary:
    run: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-acrosclerosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-quality---primary:
    run: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-quality---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-acrosclerosis---primary/output
  arthropathy-rheumatoid-arthritis-and-collagen-diseases-elixhauser-care---primary:
    run: arthropathy-rheumatoid-arthritis-and-collagen-diseases-elixhauser-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-quality---primary/output
  arthritis---primary:
    run: arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: arthropathy-rheumatoid-arthritis-and-collagen-diseases-elixhauser-care---primary/output
  rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-letter---primary:
    run: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-letter---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: arthritis---primary/output
  spondylopathy-rheumatoid-arthritis-and-collagen-diseases-elixhauser-care---primary:
    run: spondylopathy-rheumatoid-arthritis-and-collagen-diseases-elixhauser-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-letter---primary/output
  rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-joint---primary:
    run: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-joint---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: spondylopathy-rheumatoid-arthritis-and-collagen-diseases-elixhauser-care---primary/output
  rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-scleroderma---primary:
    run: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-scleroderma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-joint---primary/output
  rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-spondylitis---primary:
    run: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-spondylitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-scleroderma---primary/output
  rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-invitation---primary:
    run: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-invitation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-spondylitis---primary/output
  pauciarticular-rheumatoid-arthritis-and-collagen-diseases-elixhauser-care---primary:
    run: pauciarticular-rheumatoid-arthritis-and-collagen-diseases-elixhauser-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-invitation---primary/output
  rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-disseminated---primary:
    run: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-disseminated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: pauciarticular-rheumatoid-arthritis-and-collagen-diseases-elixhauser-care---primary/output
  rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-monitoring---primary:
    run: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-monitoring---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-disseminated---primary/output
  rheumatoid-arthritis-and-collagen-diseases-elixhauser-care---primary:
    run: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-monitoring---primary/output
  rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-diffuse---primary:
    run: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-diffuse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care---primary/output
  polyneuropathy-rheumatoid-arthritis-and-collagen-diseases-elixhauser-care---primary:
    run: polyneuropathy-rheumatoid-arthritis-and-collagen-diseases-elixhauser-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-diffuse---primary/output
  rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-carditis---primary:
    run: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-carditis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: polyneuropathy-rheumatoid-arthritis-and-collagen-diseases-elixhauser-care---primary/output
  rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-sicca---primary:
    run: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-sicca---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-carditis---primary/output
  nonarticular-rheumatoid-arthritis-and-collagen-diseases-elixhauser-care---primary:
    run: nonarticular-rheumatoid-arthritis-and-collagen-diseases-elixhauser-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-sicca---primary/output
  myopathy-rheumatoid-arthritis-and-collagen-diseases-elixhauser-care---primary:
    run: myopathy-rheumatoid-arthritis-and-collagen-diseases-elixhauser-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: nonarticular-rheumatoid-arthritis-and-collagen-diseases-elixhauser-care---primary/output
  rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-dermatomyositis---primary:
    run: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-dermatomyositis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: myopathy-rheumatoid-arthritis-and-collagen-diseases-elixhauser-care---primary/output
  rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-rheumatica---primary:
    run: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-rheumatica---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-dermatomyositis---primary/output
  acute-rheumatoid-arthritis-and-collagen-diseases-elixhauser-care---primary:
    run: acute-rheumatoid-arthritis-and-collagen-diseases-elixhauser-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-rheumatica---primary/output
  negative-rheumatoid-arthritis-and-collagen-diseases-elixhauser-care---primary:
    run: negative-rheumatoid-arthritis-and-collagen-diseases-elixhauser-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: acute-rheumatoid-arthritis-and-collagen-diseases-elixhauser-care---primary/output
  seronegative-rheumatoid-arthritis-and-collagen-diseases-elixhauser-care---primary:
    run: seronegative-rheumatoid-arthritis-and-collagen-diseases-elixhauser-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: negative-rheumatoid-arthritis-and-collagen-diseases-elixhauser-care---primary/output
  rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-polymyositis---primary:
    run: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-polymyositis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: seronegative-rheumatoid-arthritis-and-collagen-diseases-elixhauser-care---primary/output
  still-rheumatoid-arthritis-and-collagen-diseases-elixhauser-care---primary:
    run: still-rheumatoid-arthritis-and-collagen-diseases-elixhauser-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-polymyositis---primary/output
  rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-caplan's---primary:
    run: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-caplan's---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: still-rheumatoid-arthritis-and-collagen-diseases-elixhauser-care---primary/output
  rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-keratoconjunctivitis---primary:
    run: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-keratoconjunctivitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-caplan's---primary/output
  rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-spine---primary:
    run: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-spine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-keratoconjunctivitis---primary/output
  rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-specified---primary:
    run: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-specified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-spine---primary/output
  visceral-rheumatoid-arthritis-and-collagen-diseases-elixhauser-care---primary:
    run: visceral-rheumatoid-arthritis-and-collagen-diseases-elixhauser-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-specified---primary/output
  juvenile-rheumatoid-arthritis-and-collagen-diseases-elixhauser-care---primary:
    run: juvenile-rheumatoid-arthritis-and-collagen-diseases-elixhauser-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: visceral-rheumatoid-arthritis-and-collagen-diseases-elixhauser-care---primary/output
  rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-finger---primary:
    run: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-finger---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: juvenile-rheumatoid-arthritis-and-collagen-diseases-elixhauser-care---primary/output
  rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-marinescosjogren---primary:
    run: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-marinescosjogren---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-finger---primary/output
  rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-hand---primary:
    run: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-hand---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-marinescosjogren---primary/output
  seropositive-rheumatoid-arthritis-and-collagen-diseases-elixhauser-care---primary:
    run: seropositive-rheumatoid-arthritis-and-collagen-diseases-elixhauser-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-hand---primary/output
  rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-erythematosus---primary:
    run: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-erythematosus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: seropositive-rheumatoid-arthritis-and-collagen-diseases-elixhauser-care---primary/output
  rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-index---primary:
    run: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-index---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-erythematosus---primary/output
  rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-measure---primary:
    run: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-measure---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-index---primary/output
  muscular-rheumatoid-arthritis-and-collagen-diseases-elixhauser-care---primary:
    run: muscular-rheumatoid-arthritis-and-collagen-diseases-elixhauser-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-measure---primary/output
  rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-fibrositis---primary:
    run: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-fibrositis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: muscular-rheumatoid-arthritis-and-collagen-diseases-elixhauser-care---primary/output
  rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-shoulder---primary:
    run: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-shoulder---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-fibrositis---primary/output
  rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-score---primary:
    run: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-score---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-shoulder---primary/output
  rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-rheumatism---primary:
    run: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-rheumatism---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-score---primary/output
  rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-felty---primary:
    run: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-felty---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-rheumatism---primary/output
  rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-sjogrens---primary:
    run: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-sjogrens---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-felty---primary/output
  rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-organ---primary:
    run: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-organ---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-sjogrens---primary/output
  rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-activity---primary:
    run: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-activity---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-organ---primary/output
  rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-circumscribed---primary:
    run: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-circumscribed---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-activity---primary/output
  renal-rheumatoid-arthritis-and-collagen-diseases-elixhauser-care---primary:
    run: renal-rheumatoid-arthritis-and-collagen-diseases-elixhauser-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-circumscribed---primary/output
  rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-nodule---primary:
    run: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-nodule---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: renal-rheumatoid-arthritis-and-collagen-diseases-elixhauser-care---primary/output
  rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-jaccoud's---primary:
    run: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-jaccoud's---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-nodule---primary/output
  chronic-rheumatoid-arthritis-and-collagen-diseases-elixhauser-care---primary:
    run: chronic-rheumatoid-arthritis-and-collagen-diseases-elixhauser-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-jaccoud's---primary/output
  rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-forms---primary:
    run: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-forms---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: chronic-rheumatoid-arthritis-and-collagen-diseases-elixhauser-care---primary/output
  rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-libmansacks---primary:
    run: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-libmansacks---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-forms---primary/output
  collagen---primary:
    run: collagen---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-libmansacks---primary/output
  rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-crest---primary:
    run: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-crest---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: collagen---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-and-collagen-diseases-elixhauser-care-crest---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
